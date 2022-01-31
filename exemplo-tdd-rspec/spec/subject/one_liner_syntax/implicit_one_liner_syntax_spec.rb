# frozen_string_literal: true

RSpec.describe (1..5) do
  it { is_expected.to cover(3) }
end
