require_relative '../lib/move_calculator'

RSpec.describe MoveCalculator do
  context '.horizontal_increment' do
    it 'increments horizontally by 1' do
      expect(MoveCalculator.horizontal_increment('a1', 1)).to eq('b1')
    end

    it 'increments horizontally by 2' do
      expect(MoveCalculator.horizontal_increment('a1', 2)).to eq('c1')
    end
  end

  context '.horizontal_decrement' do
    it 'decrements horizontally' do
      expect(MoveCalculator.horizontal_decrement('b1', 2)).to eq('a1')
    end
  end

  context '.vertical_increment' do
    it 'increments vertically' do
      expect(MoveCalculator.vertical_increment('a1', 2)).to eq('a2')
    end
  end

  context '.vertical_decrement' do
    it 'decrements vertically' do
      expect(MoveCalculator.vertical_decrement('a2', 2)).to eq('a1')
    end
  end
end
