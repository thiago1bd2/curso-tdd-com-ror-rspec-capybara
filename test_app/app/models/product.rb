# frozen_string_literal: true

# Product
class Product < ApplicationRecord
  validates :description, :price, :category, presence: true

  belongs_to :category

  def full_description
    "#{description} || #{price}"
  end
end
