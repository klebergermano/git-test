const express = require("express");
const PORT = process.env.PORT || 3001; 
const app = express();

const mysql = require('mysql');
const path  = require('path');
const connection = mysql.createConnection(
{
    host: "localhost",
    password: "",
    user: "root",
    database: "nova_seta_cursos"
}

);

connection.connect((err)=>{
    if(err) throw err;
    console.log("Conectado com base de dados");
});



app.get('/', (req, res)=>{

    res.sendFile( __dirname + '/index.html');  
 
});


app.listen(PORT, ()=>{
    console.log(`Server listening on ${PORT}`)
});