require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @sentence = params.fetch('sentence')
  @word = params.fetch('word')
  @count = @sentence.word_count(@word)
  @count_everything = @sentence.count_everything(@word)
  erb(:results)
end
