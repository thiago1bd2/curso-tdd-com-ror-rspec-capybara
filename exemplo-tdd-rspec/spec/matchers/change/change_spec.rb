# frozen_string_literal: true

require 'my_count'

RSpec.describe MyCount, '#change' do
  it do
    expect { described_class.increment }.to change(described_class, :actual)
  end

  it do
    expect { described_class.increment }.to change(described_class, :actual).by(1)
  end

  it do
    expect { described_class.increment }.to change(described_class, :actual).from(2).to(3)
  end
end
