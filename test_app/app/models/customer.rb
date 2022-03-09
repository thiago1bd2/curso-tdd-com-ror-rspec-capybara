# frozen_string_literal: true

# Customer Class
class Customer < ApplicationRecord
  # Full-name method
  def full_name
    "Hi, #{name}"
  end
end
