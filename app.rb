require 'sinatra'
require 'sinatra/json'
require_relative 'lib/shopping.rb'

get '/items/:name' do
  name = params['name']
  data = '[{"name":"Apple", "price":100}]'
  db = ItemDatabase.load(data)
  item = db.search(name)
  item_hash = { name: item.name, price: item.price }
  json(item_hash)
end
