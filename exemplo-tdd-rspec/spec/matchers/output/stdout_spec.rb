# frozen_string_literal: true

RSpec.describe Object, '#output' do
  it do
    expect {
      puts 'some message here'
    }.to output.to_stdout
  end

  it do
    expect {
      print 'some message here'
    }.to output('some message here').to_stdout
  end

  it do
    expect {
      puts 'some message here'
    }.to output(/message/).to_stdout
  end
end
