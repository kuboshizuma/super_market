class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
  def initialize
    @items = Array.new
  end

  def add_item(item)
    @items << item
  end

  def total
    @items.inject(0) { |sum, item| sum + item.price }
  end
end

class ItemDatabase
  def initialize
    @items = Array.new
  end

  def register(item)
    @items << item
  end

  def search(item_name)
    @items.find { |item| item.name == item_name }
  end
end
