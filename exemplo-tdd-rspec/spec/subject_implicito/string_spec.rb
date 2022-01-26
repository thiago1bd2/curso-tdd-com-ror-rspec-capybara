require 'string_nao_vazia'
require 'ffaker'

RSpec.describe String do
  describe StringNaoVazia do
    context '::new' do
      it 'non empty string' do
        expect(subject.empty?).to be false
      end
      it 'has the default text \'nao vazia\'' do
        # expect(subject == 'nao vazia').to be true
        expect(subject.eql?('nao vazia')).to be true
      end
    end
  end
end
