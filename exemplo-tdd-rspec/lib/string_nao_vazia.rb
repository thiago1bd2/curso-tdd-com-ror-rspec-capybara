# frozen_string_literal: true

# A simple string class that always wont be empty
# @param []
# @return [String]
class StringNaoVazia < String
  def initialize
    super('nao vazia')
  end
end
