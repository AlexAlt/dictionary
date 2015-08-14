require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do 
  @all_words = Word.all()
  erb(:index)
end

post('/new_word') do
  word = params.fetch('new_word')
  new_word = Word.new(word)
  new_word.save()
  redirect(:index)
end

get('/index') do
  @all_words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @all_definitions = @word.definitions()
  erb(:word)
end

get('/word/:id/new_definition/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition_form)
end

post('/new_definition') do
  description = params.fetch('description')
  part_of_speech = params.fetch('part_of_speech')
  language = params.fetch('language')
  new_definition = Definition.new(:part_of_speech => part_of_speech, :language => language, :description => description)
  id = params.fetch('id')
  @word = Word.find(params.fetch('id').to_i())
  @word.add_definition(new_definition)
  redirect("/word/#{id}")
end
