require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do 
  erb(:index)
end

post('/new_word') do
  word = params.fetch('new_word')
  new_word = Word.new(:word => word)
  new_word.save()
  redirect(:word_list)
end

get('/word_list') do
  @all_words = Word.all()
  erb(:word_list)
end
