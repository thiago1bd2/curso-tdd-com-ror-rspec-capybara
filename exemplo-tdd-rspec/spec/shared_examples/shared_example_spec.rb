# frozen_string_literal: true

require 'class_with_attributes'

shared_examples 'status' do |feeling|
  it feeling.to_s do
    cwa.send("#{feeling}!")
    expect(cwa.status).to eq("I am feeling #{feeling.capitalize}!")
  end
end

RSpec.describe ClassWithAttributes, '#shared_examples' do
  subject(:cwa) { described_class.new }

  it_behaves_like 'status', :happy
  it_behaves_like 'status', :sad
  it_behaves_like 'status', :satisfied
end
