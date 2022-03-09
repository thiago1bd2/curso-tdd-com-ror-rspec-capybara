# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'new customer' do
    c = create(:customer)
    expect(c.full_name).to eq 'Hi, Name'    
  end
end
