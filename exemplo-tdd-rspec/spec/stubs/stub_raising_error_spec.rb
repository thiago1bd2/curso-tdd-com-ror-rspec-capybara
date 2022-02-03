# frozen_string_literal: true

require 'student'

RSpec.describe Student, '#stub_wit_raising' do
  it '#raising' do
    student = described_class.new
    allow(student).to receive(:bar).and_raise(RuntimeError)
    expect { student.bar }.to raise_error(RuntimeError)
  end
end
