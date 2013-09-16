assert = require 'assert'
historic = require '../src/historic'

symbol = 'TSLA'

# Note: months are zero indexed
start = new Date 2013, 7, 27
end = new Date 2013, 7, 30

historic symbol, start, end, (err, data) ->
  console.log if err then err else data

sat = new Date 2013, 8, 7
sun = new Date 2013, 8, 8
historic symbol, sat, sun, (err, data) ->
  console.log if err then err else data
  assert.equal data.length, 0

