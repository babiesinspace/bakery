require 'sinatra'
require './models.rb'
require 'sendgrid-ruby'

set :bakery, @bakery

get '/' do 
  erb :index
end

# #prints the same the same
# puts @bakery.inventory["muffins"]["Cranberry-Orange Muffin"].description
# puts @bakery.muffins["Cranberry-Orange Muffin"].description