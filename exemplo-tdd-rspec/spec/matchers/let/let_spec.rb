# frozen_string_literal: true

$counter = 0

RSpec.describe Object, '#let' do
  let(:count) { $counter += 1 }

  it 'value memorized' do
    expect(count).to eq(1) # 1st call
    expect(count).to eq(1) # 2nd call, cached value
  end

  it 'now the let is called again' do
    expect(count).to eq(2) # $count is 1 (cached), now will sum +1
  end
end
