http = require 'http'
csv = require 'csv'

splitDate = (date) -> [date.getMonth(), date.getDate(), date.getFullYear()]

module.exports = (symbol, startDate, endDate, cb) ->
  [[a, b, c], [d, e, f]] = [splitDate(startDate), splitDate(endDate)]  
  url = "http://ichart.finance.yahoo.com/table.csv?s=#{symbol}&a=#{--a}&b=#{b}&c=#{c}&d=#{--d}&e=#{e}&f=#{f}&g=d"
  http.get url, (res) ->
    if res.statusCode is 200
      csv().from(res, columns: true).to.array (data) -> cb null, data
    else
      cb res.statusCode, null