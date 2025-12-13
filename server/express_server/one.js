import express from 'express'

const app = express();
app.get('/', (req, resp) =>{
    resp.send("this is homepage");
})

app.listen(4800);