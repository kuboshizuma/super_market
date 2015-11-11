require 'shopping.rb'
RSpec.describe(ItemDatabase) do
  describe '#search' do
    let(:item) { Item.new('item_name', 100) }
    context 'with search item' do
      it 'returns item' do
        subject.register(item)
        search_item = subject.search('item_name')
        expect(search_item).to eq(item)
      end
    end
    context 'without search item' do
      it 'returns nil' do
        search_item = subject.search('item_name')
        expect(search_item).to eq(nil)
      end
    end
    describe '#load' do
      it 'returns items hash' do
        json = '[{"name":"Apple", "price":100}]'
        db = ItemDatabase.load(json)
        expect(db.search('Apple').name).to eq 'Apple'
        expect(db.search('Apple').price).to eq 100
      end
    end
  end
end
