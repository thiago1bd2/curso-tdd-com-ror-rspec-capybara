# frozen_string_literal: true

$count = 0

RSpec.describe Object, '#let!' do
  invocation = []
  let!(:counter) do
    invocation << :let!
    $count += 1
  end

  it 'call the let! before the test' do
    invocation << :it
    expect(invocation).to eq(['let!'.to_sym,'it'.to_sym])
    expect(counter).to eq(1)
  end
end
