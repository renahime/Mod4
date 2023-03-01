const express = require('express');
const app = express();

app.use(express.json());

 app.use((req, res, next) => {
  const err = new Error('The resource you were looking for could not be found')
  err.status = 404;
  next(err)
})

app.get('/', notFound, (req, res) => {
  res.send('GET / This is the root URL');
});

app.use((err, req, res, next) => {
  console.error(err);
  const status = err.status || 500;
  res.status(status);
  res.json({
    "message": "Sorry, the requested resource couldn't be found.",
    "statusCode": 404
  });
});



const port = 5000;
app.listen(port, () => console.log('Server is listening on port', port));
