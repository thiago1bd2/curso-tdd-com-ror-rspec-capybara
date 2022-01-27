# frozen_string_literal: true

require 'string_nao_vazia'

RSpec.describe Object, '#class_and_method_matchers' do
  let(:simple_string) { 'string' }
  let(:not_empty_string) { StringNaoVazia.new }

  context 'when matching for classes' do
    it 'be_instance_of / be_an' do
      expect(simple_string).to be_instance_of(String)
    end

    it 'be_kind_of / be_a' do
      # true for
      expect(not_empty_string).to be_kind_of(String)
    end
  end

  context 'when matching for methods' do
    it 'respond_to' do
      expect(simple_string).to respond_to(:empty?)
    end
  end
end
