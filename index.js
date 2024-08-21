// index.js
const express = require('express');
const app = express();
const port = 5200;  // Update port number

app.get('/', (req, res) => {
  res.send('Hello, world!');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

