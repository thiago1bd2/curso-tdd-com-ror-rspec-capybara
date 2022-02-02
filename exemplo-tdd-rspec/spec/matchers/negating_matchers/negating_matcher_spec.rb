# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :not_eq, :eq
RSpec::Matchers.define_negated_matcher :exclude, :include
RSpec::Matchers.define_negated_matcher :not_be, :be

RSpec.describe Object, '#define_negated_matcher' do
  it { expect(1).to not_eq(2) }

  it do
    a = [1, 2, 3]
    expect(a).to exclude(4)
  end

  it do
    a = 21.5
    expect(a).to not_be > 21.6
  end
end
