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
        database: 'blog'
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
// This is the route path for the Top page
// Confirm the URL and the code to display the page
app.get('/', (req, res) => {
        res.render('top.ejs');
});

      
// This is the route path for the Articles page
// Confirm the URL and the code to display the page
app.get('/list', (req, res) => {
        conn.query(
                'SELECT * FROM articles',
                (error, results) => {
                        // Confirm the data and property name to be passed to the EJS file
                        res.render('list.ejs', { articles: results });
                }
        );
});
      
// This is the route path for the Article details page
// Confirm the URL and the code to display the page
app.get('/article/:id', (req, res) => {
        const id = req.params.id;

        conn.query(
                'SELECT * FROM articles WHERE id = ?',
                [id],
                (error, results) => {
                        // Confirm the data and property name to be passed to the EJS file
                        res.render('article.ejs', { article: results[0] });
                }
        );
});


app.listen(3008, () => {
        console.log("App started on port: 3008")
})

