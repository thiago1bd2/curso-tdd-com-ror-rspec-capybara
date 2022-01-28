# frozen_string_literal: true

require 'ffaker'

RSpec.describe Array do
  subject(:my_array) { [1, 3, 4, 7, 9] }

  let(:one) { 1 }
  let(:my_sub_array) { [3, 4, 7] }

  context 'when comparing arrays' do
    it '#include' do
      expect(my_array).to include(one)
    end

    it '#match_array' do
      expect(my_array).to match_array([1, 3, 4, 7, 9])
    end

    it '#contain_exactly' do
      expect(my_array).to contain_exactly(1, 3, 4, 7, 9)
    end
  end
end
