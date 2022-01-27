# frozen_string_literal: true

# Module to help with random number
module Number
  # Module that helps with Odd numbers only
  module Odd
    # Returns only odd number in a given range
    # @param [range_start]
    # @param [range_end]
    # @return [Integer]
    def give_me_odd_number(range_start = 1, range_end = 1)
      number = nil
      loop do
        number = FFaker::Random.rand(range_start..range_end)
        redo if number.even?
        break
      end
      number
    end
  end
end
