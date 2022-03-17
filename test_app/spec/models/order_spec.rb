require 'rails_helper'

RSpec.describe Order, type: :model do
  it '#create - belongs_to' do
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it '#create_list' do
    orders = create_list(:order, 3)
    expect(orders.count).to eq 3
  end

  it '#has_many' do
    customer = create(:customer, :with_orders)
    # p customer.inspect
    # p customer.orders.inspect
    expect(customer.orders.count).to eq 3
  end
end
