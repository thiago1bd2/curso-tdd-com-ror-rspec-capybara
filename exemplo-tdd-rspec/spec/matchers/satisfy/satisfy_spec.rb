# frozen_string_literal: true

RSpec.describe Object, '#satisfy' do
  context 'when satisfying expressions' do
    number_ten = 10
    it {
      expect(number_ten).to satisfy('less than 11') do |n|
        n < 11
      end
    }

    it { expect(9).to satisfy('multiple of 3') { |n| n % 3 == 0 } }

    it {
      n = 2
      expect(n).to satisfy { n.even? }
    }
  end
end
