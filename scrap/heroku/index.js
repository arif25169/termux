"use strict";

var express = require("express"),
  request = require("request"),
  cheerio = require("cheerio"),
  bodyParser = require("body-parser"),
  route = express.Router(),
  app = express(),
  port = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
var pattern = /^((http|https|ftp):\/\/)/;
route.get("/api", function(req, res) {
    var url = decodeURIComponent(req.query.url)
    if(!pattern.test(url)) {
    url = "http://" + url;
}
  request(url, function(err, resp, body) {
    if (!err && resp.statusCode === 200) {
      var $ = cheerio.load(body),
        pageURLs = [];
      $("body a").map(function(i, links) {
        var articleText = $(links).text(),
          articleLink = $(links).attr("href")

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

route.get("/", function(req, res) {
const url = decodeURIComponent(req.query.url) 
  
      res.setHeader("Content-Type", "application/json");
      res.send("Api Is Working");
    }
);

app.use("/", route);

app.listen(port);

console.log("Your server goes on localhost:" + port);
