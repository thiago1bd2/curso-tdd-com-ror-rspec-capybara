RSpec.describe 'Comparison Matchers' do
  it '#equal - obj comparison' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#be - obj comparison' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eql - value comparison' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
    expect(x).to eql(x)
  end
end
