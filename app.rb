require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/scrabble')


get('/') do
  erb(:form)
end

get('/score') do
#binding.pry
  @word = params.fetch('word').upcase()
  @score = params.fetch('word').scrabble()
  erb(:score)
end
