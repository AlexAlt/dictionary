require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

