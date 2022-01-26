RSpec.describe 'True or False Matchers' do
  it 'be true' do
    expect(1.odd?).to be true
  end

  it 'be false' do
    expect(1.even?).to be false
  end

  it 'be_truthy' do
    # not nil and true
    a = true
    expect(a).to be_truthy 
    expect(a).not_to be_falsey
  end

  it 'be_falsey' do
    # not nil and false
    a = false
    expect(a).to be_falsey
    expect(a).not_to be_truthy
  end

  it 'be_nil' do
    a = nil
    expect(a).to be_nil
    expect(a).not_to be_truthy
    expect(a).to be_falsey
  end
end
