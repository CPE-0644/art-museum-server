const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('/ route');
});

app.listen(3000);
