const express = require("express")
const app = express()
const mysql = require("mysql")


//Setup the Server
app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(express.urlencoded({ extended: false }))
app.use(express.json())


const conn = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'Aduke2022$=',
        database: 'shop_app'
})

conn.connect(function (err) {
        if(err){
                console.log("error occured while connecting");
                console.log(err)
        }else{
                console.log("Connected successfully");
        }
});


// READ ROUTE
app.get('/', (req, res) => {
        res.render('top.ejs');
});


app.get('/index', (req, res) => {
        // Write the necessary code to get data from the database
        conn.query(
            "SELECT * FROM items",
                (error, results) => {
			// console.log(results)

			res.render('index.ejs', {items: results})
                }
        )
})


// CREAT GET ROUTE
app.get('/new', (req, res) => {
	res.render('new.ejs');
});

	

// CREAT ROUTE
app.post('/create', (req, res) => {
	conn.query(
		'INSERT INTO items (name) VALUES (?)',
		[req.body.itemName],
		(error, results) => {
			res.redirect('/index');
		}
	);
});


// DELETE ROUTE
app.post('/delete/:id', (req, res) => {
        conn.query(
                'DELETE FROM items WHERE id = ?',
                [req.params.id],
                (error, results) => {
                        if (error) {
                                console.log(error);
                        }

                        res.redirect('/index');
                }
        );
});


// UPDATE GET ROUTE
app.get('/edit/:id', (req, res) => {
        conn.query(
                'SELECT * FROM items WHERE id = ?',
                [req.params.id],
                (error, results) => {
                        if (error) {
                                console.log(error);
                        }

                        res.render('edit.ejs', {item: results[0]});
                }
        );
});


// UPDATE ROUTE
app.post('/update/:id', (req, res) => {
        // console.log(req.body.itemName)
        
        conn.query(
                'UPDATE items SET name = ? WHERE id = ?',
                [req.body.itemName, req.params.id],
                (error, results) => {
                        if (error) {
                                console.log(error);
                        }
                        res.redirect('/index');
                }
        );
});


app.listen(3008, () => {
        console.log("App started on port: 3008")
})
