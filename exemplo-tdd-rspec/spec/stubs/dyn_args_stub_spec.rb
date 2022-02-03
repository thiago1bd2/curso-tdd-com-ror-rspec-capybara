# frozen_string_literal: true

require 'student'

RSpec.describe Student, '#dynamic_arguments' do
  it '#dynamic_arguments given' do
    student = described_class.new
    allow(student).to receive(:foo) do |args|
      case args
      when :fooo
        'Foo!'
      when :barr
        'Bar!'
      end
    end

    expect(student.foo(:fooo)).to eq('Foo!')
    expect(student.foo(:barr)).to eq('Bar!')
  end
end
