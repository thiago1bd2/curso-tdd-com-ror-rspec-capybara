# frozen_string_literal: true

# Class Customer
class Customer < ApplicationRecord
  validates :name, presence: true

  def full_name
    "Sr(a) #{name}"
  end
end
