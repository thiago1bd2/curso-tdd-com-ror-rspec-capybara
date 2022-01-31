# frozen_string_literal: true

RSpec.describe Object, '#be_within' do
  context 'when checking the delta value with numbers' do
    it { expect(3.14).to be_within(0.1).of(3.13) }
    it { expect(1.5).not_to be_within(0.5).of(5) }
  end

  context 'when checking delta in arrays' do
    let(:simple_array) { [0.7, 1.3, 1.2] }

    it { expect(simple_array).to all be_within(0.4).of(1) }
  end
end
