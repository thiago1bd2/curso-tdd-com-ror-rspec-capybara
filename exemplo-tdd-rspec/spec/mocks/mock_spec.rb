# frozen_string_literal: true

require 'student'

RSpec.describe Student, '#mock' do
  it 'mocking' do
    # setup
    student = described_class.new

    # verify
    expect(student).to receive(:foo)

    # Exercise
    student.foo
  end

  it 'mocking count' do
    student = described_class.new

    expect(student).to receive(:bar).twice

    student.bar
    student.bar
  end

  it 'mocking with retunerd value' do
    student = described_class.new

    allow(student).to receive(:foo) do |args|
      case args
      when :fooo
        'Foo!'
      when :barr
        'Bar!'
      end
    end

    expect(student).to receive(:foo).with(/barr/).and_return('Foo!').once

    student.foo(:barr)
  end
end
