# frozen_string_literal: true

RSpec.describe Array, '#one_liner' do
  subject(:my_empty_array) { described_class.new }

  context 'when using is_expected.to' do
    it { is_expected.to be_empty }
  end

  context 'when expect.not_to' do
    it { expect(my_empty_array.empty?).not_to be false }
  end
end
