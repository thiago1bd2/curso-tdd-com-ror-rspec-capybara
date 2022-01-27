# frozen_string_literal: true

require 'ffaker'

RSpec.describe Object, '#comparisions' do
  context 'when #compartors' do
    let(:positive_number) { FFaker::Random.rand(1..9) }
    let(:negative_number) { FFaker::Random.rand(1..9) * -1 }

    it '<' do
      expect(negative_number).to be < positive_number
    end

    it '>' do
      expect(positive_number).to be > negative_number
    end

    it '>= with bigger number' do
      expect(positive_number).to be >= negative_number
    end

    it '>= with equality' do
      expect(positive_number).to be >= positive_number
    end

    it '<= with smaller number' do
      expect(negative_number).to be <= positive_number
    end

    it '<= with equality' do
      number = 1
      expect(number).to be(2 - 1)
    end
  end
end
