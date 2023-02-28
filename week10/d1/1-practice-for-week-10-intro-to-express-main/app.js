const express = require('express');
const app = express()

app.use(express.json()) //gives access to req.body

app.use((req, res, next) => {
  console.log('Request Body:', req.body)
  next();
})

app.post(['/juice', '/drink'], (req , res) => { //USE REQ RES!!!!
    //making the juice
    res.json(req.body);
})

app.all('/', (req, res) => {
  res.status(201);
  res.json({
    faveTV:"community",
    faveMovie: "puss in boots"
  })
} )

app.get('/test', (req, res)  => {
  res.send("server is alive!!!! mwaahhaha");
})


app.get('/user/:id', (res,req) => {
  console.log(req.params);
  res.send(req.params.id);
}) // ':' the request can be different


app.get('/query',(req, res) => {
  console.log(req.query);
  res.send('query strings');
})

//order matters
app.get('/theBestMovie', (req,res) => {
  res.send("there is no best movie");
})
app.get('/:movieName', (req,res) => {
  res.send(`${req.params.movieName} is a cool movie`)
})



app.listen(8000, () => {
  console.log("hey server is running on port 8000");
});
