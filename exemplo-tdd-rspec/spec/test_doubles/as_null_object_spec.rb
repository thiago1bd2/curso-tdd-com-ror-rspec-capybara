# frozen_string_literal: true

# require 'rspec/rspec-mock'

RSpec.describe Object, '#as_null_object' do
  it 'allowing to receive any message' do
    # as_null_object allow the stubbed class/object to
    # receive any method call

    # Setup
    # the same as double('class').as_null_object
    my_person = instance_spy('Personal')

    # Exercise
    my_person.foo

    # Verify
    expect(my_person).to have_received(:foo)
  end
end
