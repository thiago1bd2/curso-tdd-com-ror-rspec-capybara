FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Order nmb.: #{n}" }
    customer
  end
end
