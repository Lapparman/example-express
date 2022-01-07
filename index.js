const express = require("express");

const app = express();

app.get("*", (req, res) => {
  res.json({ message: "welcome to MCP" });
});

app.listen(process.env.PORT);
