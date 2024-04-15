const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("active");
});

app.listen(2000, () => {
  console.log("listening");
});
