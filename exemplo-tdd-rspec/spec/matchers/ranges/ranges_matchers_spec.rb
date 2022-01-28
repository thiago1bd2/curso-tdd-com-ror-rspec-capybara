# frozen_string_literal: true

require 'ffaker'

RSpec.describe Range, '#cover' do
  subject(:my_range) { (1..5) }

  context 'when elements are covered' do
    it 'one element covered' do
      expect(my_range).to cover(FFaker::Random.rand(1..5))
    end

    it 'more than one element covered' do
      expect(my_range).to cover(FFaker::Random.rand(1..5), FFaker::Random.rand(1..5))
    end
  end

  context 'when element are not covered' do
    it 'one element is not covered' do
      expect(my_range).not_to cover(FFaker::Random.rand(-5..0))
    end

    it 'more than one element are not covered' do
      expect(my_range).not_to cover(FFaker::Random.rand(-9..0), FFaker::Random.rand(6..10))
    end
  end
end
