# frozen_string_literal: true

RSpec.describe Object, '#all' do
  before(:all) do
    @number = 1
    p "number initialized with value #{@number}"
  end

  after(:all) do
    @number = 0
    p "number finalized with value #{@number}"
  end

  it 'number should be eq to 1' do
    expect(@number).to eq(1)
  end
end
