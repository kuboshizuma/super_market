require 'shopping.rb'

RSpec.describe(Item) do
  subject(:item) { Item.new('name', 100)  }
  describe '#name' do
    context 'name attribute exists' do
      it { expect(item.name).to eq("name") }
    end
  end
  describe '#price' do
    context 'price attribute exists' do
      it { expect(item.price).to eq(100) }
    end
  end
end
