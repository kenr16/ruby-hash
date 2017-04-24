require('sinatra')
require('sinatra/reloader')
require('rspec')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/display') do
  # @string1 = params.fetch('first_string').to_s()
  # @string2 = params.fetch('second_string').to_s()
  # @output = @string1.anagrams(@string2)
  erb(:display)
end
