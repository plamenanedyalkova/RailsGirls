require 'sinatra'

Struct.new("Restaurant", :name, :address, :opening_hours)

happy1 = Struct::Restaurant.new("Happy 1", "Cherno more", "09-24")
happy2 = Struct::Restaurant.new("Happy 2", "Morska gradina", "08-17")

CHOICES = {
  'happy1'        => happy1,
  'happy2'        => happy2
}

get '/' do
  erb :index
 end

post '/cast' do
  @title = 'Благодарим за вашия глас!'
  @vote  = params['vote']
  puts params
  erb :cast
end