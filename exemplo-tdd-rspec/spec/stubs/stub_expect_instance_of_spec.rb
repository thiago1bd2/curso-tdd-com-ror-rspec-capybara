# frozen_string_literal: true

require 'student'

RSpec.describe Student, '#any_instalce_of' do
  it '#allow_any_instance_of' do
    student = described_class.new
    expect_any_instance_of(described_class).to receive(:foo).and_return('Foo!')
    expect(student.foo).to eq('Foo!')
  end
end
