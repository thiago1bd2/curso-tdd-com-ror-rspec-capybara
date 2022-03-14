# frozen_string_literal: true

# Customer Class
class Customer < ApplicationRecord
  has_many :orders

  validates :address, presence: true

  # Full-name method
  def full_name
    "Hi, #{name}"
  end
end
