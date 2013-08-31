historic = require '../src/historic'

symbol = 'TSLA'
start = new Date()
end = new Date()

start.setMonth 7 # zero indexed
start.setDate 27
start.setFullYear 2013

end.setMonth 7 # zero indexed
end.setDate 30
end.setFullYear 2013

historic symbol, start, end, (err, data) ->
  console.log if err then err else data
