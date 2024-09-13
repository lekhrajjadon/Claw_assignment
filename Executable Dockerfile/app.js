const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send("I believe I am a strong fit for the Cloud Engineer role due to my hands-on experience with Azure and AWS, where I've work on  cloud environment>});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});


