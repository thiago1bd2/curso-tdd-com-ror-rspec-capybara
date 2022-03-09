# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    name { 'Name' }
    email { 'email@email.com' }
  end
end
