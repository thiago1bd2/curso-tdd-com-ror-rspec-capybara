# frozen_string_literal: true

RSpec.describe Object, '#all' do
  let(:my_array_of_strings) { %w[apple orange grape-fruit lemon blueberry] }

  context 'when using #all, e.g., numbers' do
    my_array_of_numbers = []
    5.times do
      my_array_of_numbers.push(Helper.give_me_odd_number)
    end

    it { expect(my_array_of_numbers).to all (be_odd).and be < 10 }
    it { expect(my_array_of_numbers).to all be_an(Integer) }
  end

  context 'when using #all, e.g., strings' do
    it { expect(my_array_of_strings).to all start_with('b').or include('e') }
  end
end
