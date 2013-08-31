historic = require '../src/historic'

symbol = 'TSLA'

# Note: months are zero indexed
start = new Date 2013, 7, 27
end = new Date 2013, 7, 30

historic symbol, start, end, (err, data) ->
  console.log if err then err else data
