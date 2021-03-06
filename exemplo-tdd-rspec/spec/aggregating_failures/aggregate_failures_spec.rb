# frozen_string_literal: true

# This spec has some failures on purpose
# to show how aggreate failures works
# to set it up globally
# check the spec_helper file

RSpec.describe Object, '#aggregate_failures' do
  xit do
    aggregate_failures do
      a = b = 2
      expect(a).to be > b
      expect(b).to be < a
    end
  end

  xit 'aggregating failures', :aggregate_failures do
    a = [2, 4, 6]
    expect(a).to all(satisfy('be odd number', &:odd?))
  end
end
