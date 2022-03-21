require 'rails_helper'

RSpec.describe Customer, type: :model do
  fixtures :customers

  context 'fixtures' do
    it '#full_name' do
      c = customers(:thiago)
      expect(c.full_name).to eq 'Sr(a) Thiago R'
    end
  end

  context 'factory_bot_rails' do
    it '#full_name' do
      c = create(:customer) # or create(:factory_name)
      expect(c.full_name).to start_with 'Sr(a) '
    end

    it '#full_name - overwriting attribute' do
      name = 'Ogaith'
      c = create(:customer, name: name) # or create(:factory_name)
      expect(c.full_name).to match name
    end

    it { expect { create(:user) }.to change { Customer.all.size }.by(1) }
  end

  context 'nested factories' do
    it 'vip customer must have 30 to pay' do
      c = create(:vip)
      expect(c.days_to_pay).to eq 30
    end

    it 'vip customer must return vip: true' do
      c = create(:vip)
      expect(c.vip).to be_truthy
    end

    it 'default customer must have 15 days to pay' do
      c = create(:default)
      expect(c.days_to_pay).to eq 15
    end

    it 'default customer must return vip: false' do
      c = create(:default)
      expect(c.vip).to be_falsy
    end
  end
end
