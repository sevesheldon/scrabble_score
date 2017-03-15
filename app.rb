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
  @score = params.fetch('score').leetspeak()
  erb(:score)
end
