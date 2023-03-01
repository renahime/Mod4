const express = require('express');
const app = express()

app.listen(8000, () => {
  console.log("hey server is running on port 8000");
});

app.get('/test', (req, res)  => {
  res.send("server is alive!!!! mwaahhaha");
})
