# frozen_string_literal: true

require 'calculator'

RSpec.describe Calculator, '#around' do
  around do |t|
    p 'before the test itself'
    @calc = described_class.new
    p "@cal is nil? #{@calc.nil?}"

    t.run

    p 'after the test itself'
    @calc = nil
    p "@cal is nil? #{@calc.nil?}"
  end

  it '#sum two number' do
    expect(@calc.sum(5, 5)).to eq(10)
  end
end
