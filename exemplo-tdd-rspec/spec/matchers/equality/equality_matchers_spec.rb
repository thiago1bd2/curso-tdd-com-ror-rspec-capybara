# frozen_string_literal: true

RSpec.describe Object, '#equality_matchers' do
  it '#equal - obj comparison' do
    x = 'ruby'

    expect(x).to equal(x)
  end

  it '#be - obj comparison' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to be(y)
  end

  it '#eql - value comparison' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
  end
end
