
const express = require('express');
const app = express();

// simple route
app.get('/', (req, res) => {
  res.send('Hello from my Dockerized Node.js App!');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`App running on port ${PORT}`));

module.exports = app;