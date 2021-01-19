const express = require('express');
const bodyParser = require('body-parser')
const cors = require('cors');
const massive = require('massive');
// const configs = require('./config.js');


var app = module.exports = express();

app.use(express.static(__dirname));
app.use(bodyParser.json());
app.use(cors());

var connectionString = 'postgres://tesladb1:password@localhost/tesla'
var db = massive.connectSync({connectionString : connectionString})
app.set('db', db);
var db =  app.get('db')



var serverCtrl = require('./serverCtrl.js');

const port = 80;
app.listen(port, function(){
  console.log("Yoda Lay Hee Whoo", port)

   db.createTables(function(x){
     console.log("!!!!!!!!!! Tables Created !!!!!!!!!!");
       console.log(x);
  });

})

app.get('/api/cars', serverCtrl.getAllCars)
app.get('/api/cars/:id', serverCtrl.getCarById)
