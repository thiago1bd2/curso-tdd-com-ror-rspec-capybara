# frozen_string_literal: true

RSpec.describe Object, '#odd_numbers_only' do
  it { expect(Helper.give_me_odd_number).to be_odd }

  it {
    expect(Helper.give_me_even_number).to be_even
  }
end
