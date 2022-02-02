# frozen_string_literal: true

RSpec.describe Object, '#stderr' do
  it do
    expect do
      warn 'some error message here'
    end.to output.to_stderr
  end

  it do
    expect do
      warn 'some error message here'
    end.to output("some error message here\n").to_stderr
  end

  it do
    expect do
      warn 'some error message here'
    end.to output(/message/).to_stderr
  end
end
