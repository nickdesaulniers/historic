#Yahoo Historic Stock Quote Data
Fetch historic stock data from yahoo

##Usage
`npm install historic`
```javascript
var historic = require('historic');

var symbol = 'TSLA';
var start = new Date();
var end = new Date();

start.setMonth(7); // zero indexed
start.setDate(27);
start.setFullYear(2013);

end.setMonth(7); // zero indexed
end.setDate(30);
end.setFullYear(2013);

historic(symbol, start, end, function (err, data) {
  console.log(err ? err : data);
});
```