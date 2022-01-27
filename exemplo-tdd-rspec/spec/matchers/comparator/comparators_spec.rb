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

    it 'be_between inclusive' do
      expect(positive_number).to be_between(1, 9)
    end

    it 'be_between exclusive' do
      expect(positive_number).to be_between(0, 10).exclusive
    end
  end

  context 'when #match' do
    it 'match regex' do
      email = 'some@email.com'
      expect(email).to match(/..@../)
    end
  end

  context 'when #start_with #end_with' do
    let(:my_string) { 'awesome string here' }
    let(:my_array) { [1, 2, 3, 4, 5] }

    it 'start_with string' do
      expect(my_string).to start_with('awe')
    end

    it 'start_with array' do
      expect(my_array).to start_with([1, 2, 3])
    end

    it 'end_with string' do
      expect(my_string).to end_with('ere')
    end

    it 'end_with array' do
      expect(my_array).to end_with([4, 5])
    end
  end
end
