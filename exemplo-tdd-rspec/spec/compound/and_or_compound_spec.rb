# frozen_string_literal: true

RSpec.describe String, '#and' do
  subject(:my_string) { described_class.new('Ruby on Rails') }

  let(:odd_number) { 1 }
  let(:even_number) { 2 }

  context 'when composing with #and for String' do
    it { is_expected.to start_with('Ruby').and end_with('Rails') }
  end

  context 'when composing with #and for number' do
    it { expect(odd_number).to be_odd.or be < 2 }
  end
end
