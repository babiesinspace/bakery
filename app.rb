require 'sinatra'
require './models.rb'
require 'sendgrid-ruby'
require 'sinatra/flash'

include SendGrid


set :bakery, @bakery

get '/' do 
  erb :index
end

get '/about' do 
  erb :about
end

get '/cookies' do 
  erb :cookies
end

get '/cakes' do 
  erb :cakes
end

get '/muffins' do 
  erb :muffins
end

get '/treats' do 
  erb :treats
end

post '/contact' do
  @email = params[:email]
  @opinion = params[:opinion]
  @name = params[:name]

  from = Email.new(email: 'allie.g.cooper@gmail.com')
  to = Email.new(email: @email)
  subject = "#{@name} would like to be added to the list to the list"
  content = Content.new(type: 'text/plain', value: "Name: #{@name} \nThoughts: #{@opinion}")
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  redirect '/'
  if response.status_code == 401
    error_hash = JSON.parse(response.body)
    @errors = error_hash["errors"]
  end 
end

# #prints the same the same
# puts @bakery.inventory["muffins"]["Cranberry-Orange Muffin"].description
# puts @bakery.muffins["Cranberry-Orange Muffin"].description