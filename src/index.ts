import express from "express";

// Express
const app = express();

// @ts-ignore
app.get("/", (_, res) => {
  res.send("Server is running");
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log("Server: ON"));
