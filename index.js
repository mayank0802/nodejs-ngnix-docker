const express = require('express');
const nginx = require('nginx');

const app = express();
app.get('/', (req, res) => {
    res.send("Hello Aditi");
});

app.listen(80,()=>{
    console.log("Listening on port 80")
});
