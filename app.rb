require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/palindream')

get('/') do
  erb(:index)
end

get('/results') do
  @input = params.fetch('input')

  erb(:results)
end
