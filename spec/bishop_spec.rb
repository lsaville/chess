require_relative '../lib/bishop'

RSpec.describe Bishop do
  context 'basic attributes' do
    it 'has color' do
      b = Bishop.new(true)

      expect(b.color).to eq(true)
    end
  end
end
