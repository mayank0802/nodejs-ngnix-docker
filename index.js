const express = require('express');
const nginx = require('nginx');

const app = express();
const client = nginx.createClient();
app.get('/', (req, res) => {
    res.send("Hello World");
});

app.listen(3000,()=>{
    console.log("Listening on port 3000")
});
