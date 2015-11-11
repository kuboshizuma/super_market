require 'shopping.rb'

RSpec.describe(Cart) do
  describe '#total' do
    context 'check total' do
      it do
        item1 = Item.new('item1', 100)
        item2 = Item.new('item2', 120)
        subject.add_item(item1)
        subject.add_item(item2)
        expect(subject.total).to eq(220)
      end
    end
  end
end
