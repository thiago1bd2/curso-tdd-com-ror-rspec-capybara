# frozen_string_literal: true

# Sample class for count
class MyCount
  @count = 0

  def self.actual
    @count
  end

  def self.increment
    @count += 1
  end
end
