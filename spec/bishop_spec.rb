require_relative '../lib/bishop'

RSpec.describe Bishop do
  context 'basic attributes' do
    it 'has color' do
      b = Bishop.new('black', 'a1')

      expect(b.color).to eq('black')
    end
  end
end
