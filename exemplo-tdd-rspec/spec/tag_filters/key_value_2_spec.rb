# frozen_string_literal: true

RSpec.describe Object, '#key_value_filter_2', my_key: true do
  it do
    a = 'string'
    expect(a).to eq 'string'
  end

  it do
    a = 'another string'
    expect(a).to match /another/
  end

  it 'super slow test', :slow do
    a = nil
    expect(a).to be_nil
  end
end
