const express = require("express")
const app = express()
const mysql = require("mysql")


app.use(express.static("public"));

const connection = mysql.createConnection({
          // db name, password
          host: 'localhost',
          user: 'arabog',
          password: 'Aduke2022$=',
          database: 'list_app'
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

                              res.render('index.ejs')
                    }
          )
}


app.listen(3000, () => {
          console.log("App started on port: 3000")
})