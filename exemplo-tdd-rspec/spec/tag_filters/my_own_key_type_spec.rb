# frozen_string_literal: true

RSpec.describe Object, '#my_own_key_type', type: 'simple_test' do
  it do
    a = 'string'
    expect(a).to eq 'string'
  end

  it do
    a = 'another string'
    expect(a).to match /another/
  end
end
