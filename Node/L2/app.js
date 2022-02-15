const express = require("express")
const app = express()
const mysql = require("mysql")


//Setup the Server
app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(express.urlencoded({ extended: false }))
app.use(express.json())


const connection = mysql.createConnection({
          // db name, password
        host: 'localhost',
        user: 'arabog',
        password: 'Aduke2022$=',
        database: 'shop_app'
})


app.get('/', (req, res) => {
        res.render('top.ejs');
});


app.get('/index', (req, res) => {
        // Write the necessary code to get data from the database
        connection.query(
            "SELECT * FROM items",
                (error, results) => {
			console.log(results)

			res.render('index.ejs', {items: results})
                }
        )
})


app.get('/new', (req, res) => {
	res.render('new.ejs');
});

	
app.post('/create', (req, res) => {
	connection.query(
		'INSERT INTO items (name) VALUES (?)',
		[req.body.itemName],
		(error, results) => {
			res.redirect('/index');
		}
	);
});


app.listen(5050, () => {
        console.log("App started on port: 5050")
})