"use strict";

var express = require("express"),
  request = require("request"),
  cheerio = require("cheerio"),
  route = express.Router(),
  app = express(),
  port = process.env.PORT || 3000;

route.get("/", function(req, res) {
const url = decodeURIComponent(req.query.url)
const ext = req.query.ext; 
  request(url, function(err, resp, body) {
    if (!err && resp.statusCode === 200) {
      var $ = cheerio.load(body),
        pageURLs = [];
        console.log(ext)
      $("body a").map(function(i, links) {
        var articleText = $(links).text(),
          articleLink = $(links).attr("href").endsWith(ext);

        pageURLs.push({
          link: articleLink,
          desc: articleText
        });
      });

      res.setHeader("Content-Type", "application/json");
      res.send(JSON.stringify(pageURLs));
    }
  });
});

app.use("/", route);

app.listen(port);

console.log("Your server goes on localhost:" + port);
