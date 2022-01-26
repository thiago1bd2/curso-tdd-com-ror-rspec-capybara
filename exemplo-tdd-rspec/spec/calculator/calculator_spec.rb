# frozen_string_literal: true

require 'calculator'
require 'ffaker'

describe Calculator do
  describe '.sum' do
    context 'positive number only' do
      let(:positive_number_one) { FFaker::Random.rand(0..99) }
      let(:positive_number_two) { FFaker::Random.rand(0..99) }
      let(:big_negative_number) { FFaker::Random.rand(-999..-99) }
      let(:negative_number_one) { FFaker::Random.rand(-99..-1) }

      it 'result fo the sum' do
        result = Calculator.new.sum(positive_number_one, positive_number_two)
        expect(result).to eq(positive_number_one + positive_number_two)
      end

      context 'at least one negative number' do
        it 'a negative result' do
          result = Calculator.new.sum(big_negative_number, positive_number_one)
          expect(result).to eq(big_negative_number + positive_number_one)
        end

        it 'a positive result' do
        end
      end
    end
  end
end
