# frozen_string_literal: true

RSpec.describe Object, '#predicate_matchers' do
  let(:empty_string) { String.new }
  let(:odd_number) { 3 }
  let(:even_number) { 2 }

  it '3 is odd?' do
    expect(odd_number).to be_odd
  end

  it '2 is even?' do
    expect(even_number).to be_even
  end

  it 'nil is nil?' do
    expect(nil).to be_nil
  end

  it '"" is empty?' do
    expect(empty_string).to be_empty
  end
end
