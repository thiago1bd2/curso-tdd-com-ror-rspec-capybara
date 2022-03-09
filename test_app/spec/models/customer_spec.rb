# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    c = create(:customer_male)
    expect(c.full_name).to eq "Hi, #{c.name}"
  end

  it '#full_name - overwrite' do
    c = create(:customer_male, name: 'Own Name')
    expect(c.full_name).to eq 'Hi, Own Name'
  end

  it '#full_name - false vip' do
    c = create(:customer_default)
    expect(c.vip).to eq(false)
  end

  it '#full_name - true vip' do
    c = create(:customer_vip)
    expect(c.vip).to eq(true)
  end

  xit '#attributes_for' do
    attrs = attributes_for(:customer)
    p attrs
  end

  it '#transient' do
    c = create(:customer_default, upcased: true)
    expect(c.name.upcase).to eq(c.name)
  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end
