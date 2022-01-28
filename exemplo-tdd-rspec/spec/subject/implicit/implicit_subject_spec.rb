# frozen_string_literal: true

require 'string_nao_vazia'
require 'ffaker'

RSpec.describe String do
  describe StringNaoVazia do
    subject(:not_empty_string) { described_class.new }

    context 'when .new' do
      it 'non empty string' do
        expect(not_empty_string.empty?).to be false
      end

      it 'has the default text \'nao vazia\'' do
        # expect(not_empty_string == 'nao vazia').to be true
        expect(not_empty_string.eql?('nao vazia')).to be true
      end
    end
  end
end
