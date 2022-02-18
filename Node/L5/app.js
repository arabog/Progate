const express = require('express');
const mysql = require('mysql');
const session = require('express-session');
const app = express();

app.use(express.static('public'));
app.use(express.urlencoded({extended: false}));


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


app.use(
        session({
                secret: 'my_secret_key',
                resave: false,
                saveUninitialized: false,
        })
);



app.use((req, res, next) => {
        if (req.session.userId === undefined) {
                res.locals.username = 'Guest';

                // Assign false to the isLoggedIn property of the res.locals object
                res.locals.isLoggedIn = false;
        } else {
                res.locals.username = req.session.username;

                // Assign true to the isLoggedIn property of the res.locals object
                res.locals.isLoggedIn = true;
        }

        next();
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


app.get('/login', (req, res) => {
        res.render('login.ejs');
});


app.post('/login', (req, res) => {
        const email = req.body.email;
        

        conn.query(
                'SELECT * FROM users WHERE email = ?',
                [email],
                (error, results) => {
                        if (results.length > 0) {

                                if (req.body.password === results[0].password){
                                        req.session.userId = results[0].id;

                                        req.session.username = results[0].email;

                                        res.redirect('/list');
                                } else {
                                        res.redirect('/login');
                                }    
                        } else {
                                res.redirect('/login');
                        }
                }
        );
});


app.get('/logout', (req, res) => {
        req.session.destroy((error) => {
                res.redirect('/list');
        });
});


app.listen(3008, () => {
        console.log("App started on port: 3008")
})

