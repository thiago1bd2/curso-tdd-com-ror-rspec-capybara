# frozen_string_literal: true

require 'ffaker'

RSpec.describe Object, '#between' do
  let(:positive_number) { FFaker::Random.rand(1..9) }
  let(:negative_number) { FFaker::Random.rand(1..9) * -1 }

  it 'be_between inclusive' do
    expect(positive_number).to be_between(1, 9)
  end

  it 'be_between exclusive' do
    expect(positive_number).to be_between(0, 10).exclusive
  end
end
