# frozen_string_literal: true

RSpec.describe Object, '#all' do
  let(:my_array_of_numbers) { [1, 3, 5, 7, 9] }
  let(:my_array_of_strings) { %w[apple orange grape-fruit lemon blueberry] }

  context 'when using #all, e.g., numbers' do
    it { expect(my_array_of_numbers).to all (be_odd).and be < 10 }
    it { expect(my_array_of_numbers).to all be_an(Integer) }
  end

  context 'when using #all, e.g., strings' do
    it { expect(my_array_of_strings).to all start_with('b').or include('e') }
  end
end
