# frozen_string_literal: true

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end

  failure_message_when_negated do |actual|
    "expected that #{actual} would not be a multiple of #{expected}"
  end
end

RSpec.describe Integer, '#be_a_multiple_of' do
  describe 33, '#be_a_multiple_of direct number' do
    it { is_expected.to be_a_multiple_of(3) }
  end

  describe Integer, '#be_a_multiple_of, subject' do
    xit do
      a = 9
      expect(a).not_to be_a_multiple_of(3)
    end
  end
end
