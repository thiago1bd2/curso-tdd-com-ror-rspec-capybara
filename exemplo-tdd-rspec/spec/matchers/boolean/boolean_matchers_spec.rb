# frozen_string_literal: true

require 'ffaker'

RSpec.describe Object, '#true_false_matchers' do
  let(:positive_number) { FFaker::Random.rand(1..9) }
  let(:negative_number) { FFaker::Random.rand(1..9) * -1 }

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
  end

  it 'be_falsey' do
    # not nil and false
    a = false
    expect(a).not_to be_truthy
  end

  it 'be_nil' do
    a = nil
    expect(a).to be_nil
  end
end
