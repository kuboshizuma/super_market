require 'json'

class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def total
    @items.inject(0) { |sum, item| sum + item.price }
  end
end

class ItemDatabase
  attr_accessor :items
  def initialize
    @items = {}
  end

  def register(item)
    @items[item.name] = item
  end

  def search(item_name)
    @items[item_name]
  end

  def self.load(json)
    db = new
    array = JSON.parse(json)
    array.each do |item|
      db.register(Item.new(item["name"], item["price"]))
    end
    db
  end

end
