# frozen_string_literal: true

RSpec.describe Object, '#doubles' do
  it 'something...' do
    user = instance_double('User')
    allow(user).to receive_messages(name: 'Name')
    allow(user).to receive(:password).and_return('secret')
    p user.inspect
    p user.name
    p user.password
  end
end
