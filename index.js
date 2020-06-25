const express = require('express');
const nginx = require('nginx');

const app = express();
const client = nginx.createClient();
app.get('/', (req, res) => {
    res.send("Hello World");
});

app.listen(80,()=>{
    console.log("Listening on port 80")
});
