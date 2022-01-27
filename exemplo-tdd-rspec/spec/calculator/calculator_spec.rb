# frozen_string_literal: true

require 'calculator'
require 'ffaker'

RSpec.describe Calculator do
  describe '#sum' do
    subject(:calc) { described_class.new }

    let(:positive_number) { FFaker::Random.rand(0..99) }
    let(:big_positive_number) { FFaker::Random.rand(99..999) }
    let(:negative_number) { FFaker::Random.rand(-99..-1) }
    let(:big_negative_number) { FFaker::Random.rand(-999..-99) }

    context 'when positive numbers only' do
      it 'a positive result' do
        expect(calc.sum(positive_number, big_positive_number)).to eq(positive_number + big_positive_number)
      end
    end

    context 'when at least one negative number' do
      it 'a positive result' do
        expect(calc.sum(negative_number, big_positive_number)).to eq(negative_number + big_positive_number)
      end

      it 'when a negative result' do
        expect(calc.sum(negative_number, big_negative_number)).to eq(negative_number + big_negative_number)
      end
    end

    context 'when negative numbers only' do
      it 'a negative result' do
        expect(calc.sum(negative_number, big_negative_number)).to eq(negative_number + big_negative_number)
      end
    end
  end
end
