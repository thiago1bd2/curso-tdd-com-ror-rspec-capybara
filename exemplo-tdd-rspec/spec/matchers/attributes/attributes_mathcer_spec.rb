# frozen_string_literal: true

require 'class_with_attributes'

RSpec.describe ClassWithAttributes, '#attribute_matchers' do
  context 'when checking classe atributes' do
    subject(:bob) { described_class.new }

    let(:my_obj_one) { described_class.new }

    it 'respond_to for attribute name' do
      expect(my_obj_one).to respond_to(:name)
    end

    it 'checking if the attribute has the value' do
      bob.name = 'Bob'
      expect(bob).to have_attributes(name: start_with(a_string_starting_with('B')))
    end
  end
end
