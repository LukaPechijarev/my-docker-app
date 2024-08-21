const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.status(200).send('OK');
});

app.listen(4500, () => {
  console.log('Server is running on port 4500');
});

