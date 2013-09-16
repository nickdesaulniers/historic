#Yahoo Historic Stock Quote Data
Fetch historic stock data from yahoo

##Usage
`npm install historic`
```javascript
var historic = require('historic');

var symbol = 'TSLA';

// Note: months are zero indexed
// start..end (inclusive)
// no data for weekends
var start = new Date(2013, 7, 27);
var end = new Date(2013, 7, 30);

historic(symbol, start, end, function (err, data) {
  console.log(err ? err : data);
});
```

