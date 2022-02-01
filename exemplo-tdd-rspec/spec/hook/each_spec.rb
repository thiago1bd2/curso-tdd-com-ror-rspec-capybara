# frozen_string_literal: true

RSpec.describe Object, '#all' do
  before do
    @number = 1
    p "number initialized with value #{@number}"
  end

  after do
    @number += 1
    p "finishing number with value #{@number}"
  end

  it 'number should be eq to 1' do
    expect(@number).to eq(1)
  end

  it 'number should be greather than 1' do
    expect(@number).to be >= 1
  end
end
