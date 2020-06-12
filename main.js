// These are the global variables

// The express library
const express = require('express');
// The upload library
const fileUpload = require('express-fileupload');
// The parser library
const bodyParser = require('body-parser');
// The sql library
const mysql = require('mysql');
// The system path library
const path = require('path');

// We create a new variable with the express library
const app = express();

// We add the index
const {getHomePage} = require('./routes/index');

// We add the rodes with the corresponding ejs
const {addRoutePage, addRoute, deleteRoute, addLocation, addLocationPage, showRoute} = require('./routes/rode');

// The port to use is 5000
const port = 5000;

// It creates the database with the credentials
const db = mysql.createConnection ({
    host: 'localhost',
    user: 'root',
    password: '12345',
    database: 'login'
});

// Now we connect to the database
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to database');
});


global.db = db;

// configure the middleware
app.set('port', process.env.port || port); // we configure express to listen into the port
app.set('views', __dirname + '/views'); // we configure all the views for the project
app.set('view engine', 'ejs'); // now we configure all the templates
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); // This is needed to parse
app.use(express.static(path.join(__dirname, 'public'))); // configures the public to be used to save images
app.use(fileUpload()); // This line is needed to upload files

// The routes of the page with each ejs
app.get('/', getHomePage);
app.get('/add', addRoutePage);
app.get('/addLocation/:id', addLocationPage);
app.get('/delete/:id', deleteRoute);
app.get('/showRoute/:id', showRoute);
app.post('/add', addRoute);
app.post('/addLocation/:id', addLocation);


// Now we need to set the port
app.listen(port, () => {
    console.log(`Server running on port: ${port}`);
});

