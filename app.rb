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
  @output = @input.palindream
  @result = '"' + @input + '"' + " is not a palindrome"
  if @output
    @result = '"' + @input + '"' + ' is a palindrome!'
  end
  erb(:results)
end
