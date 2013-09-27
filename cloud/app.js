
// These two lines are required to initialize Express in Cloud Code.
var express = require('express');
var app = express();

var cloudPath = "cloud/";

// Global app configuration section
app.set('views', 'cloud/views');  // Specify the folder to find templates
app.set('view engine', 'ejs');    // Set the template engine
app.use(express.bodyParser());    // Middleware for reading request body

app.get('/', function(req, res) {
    var query = new Parse.Query("Counter");
    query.equalTo("attr", "pageviews");
    query.find({
        success: function(results) {
            res.render('hello', {message:JSON.stringify(results)});
        }
    })
});

app.listen();
