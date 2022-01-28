# frozen_string_literal: true

require 'calculator'
require 'ffaker'

RSpec.describe Calculator, '#div' do
  context 'when by 0' do
    subject(:calc) { described_class.new }

    let(:positive_number) { FFaker::Random.rand(1..3) }
    let(:negative_number) { FFaker::Random.rand(-3..-1) }
    let(:zero) { 0 }

    it '0 div by 0 raises ZeroDividionException' do
      expect { calc.div(zero, zero) }.to raise_exception(ZeroDivisionError)
    end

    it 'positive numbers div by 0 raises ZeroDividionException' do
      expect { calc.div(positive_number, zero) }.to raise_error(ZeroDivisionError)
    end

    it 'negative numbers div by 0 raises ZeroDividionException' do
      expect { calc.div(negative_number, zero) }.to raising(ZeroDivisionError)
    end

    it 'numbers div by 0 raises ZeroDividionException with error message' do
      expect { calc.div(negative_number, zero) }.to raising(ZeroDivisionError, 'divided by 0')
    end

    it 'numbers div by 0 checking error with regex' do
      expect { calc.div(positive_number, zero) }.to raising(/divided by/)
    end
  end
end
