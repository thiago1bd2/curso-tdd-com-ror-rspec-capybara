# frozen_string_literal: true

# Simple class with some attributes
class ClassWithAttributes
  attr_accessor :name, :age, :own_number, :own_string
  attr_reader :status

  def happy!
    @status = 'I am feeling Happy!'
  end

  def sad!
    @status = 'I am feeling Sad!'
  end

  def satisfied!
    @status = 'I am feeling Satisfied!'
  end
end
