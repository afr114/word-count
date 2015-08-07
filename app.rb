require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/wordcount') do
    @word = params.fetch('word').downcase()
    @wordcount = params.fetch('sentence').word_count().count(@word)
  erb(:wordcount)
end
