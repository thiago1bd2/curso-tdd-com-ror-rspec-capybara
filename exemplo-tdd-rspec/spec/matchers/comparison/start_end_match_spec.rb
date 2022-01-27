# frozen_string_literal: true

RSpec.describe Object, '#star_end_with_an_match' do
  context 'when #match' do
    it 'match regex' do
      email = 'some@email.com'
      expect(email).to match(/..@../)
    end
  end

  context 'when #start_with #end_with' do
    let(:my_string) { 'awesome string here' }
    let(:my_array) { [1, 2, 3, 4, 5] }

    it 'start_with string' do
      expect(my_string).to start_with('awe')
    end

    it 'start_with array' do
      expect(my_array).to start_with([1, 2, 3])
    end

    it 'end_with string' do
      expect(my_string).to end_with('ere')
    end

    it 'end_with array' do
      expect(my_array).to end_with([4, 5])
    end
  end
end
