# frozen_string_literal: true

require 'faker'

RSpec.describe HTTParty do
  # it '#get', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body] } do
  it '#get', vcr: { cassette_name: 'jsonplaceholder/posts', :record => :new_episodes } do
  # stub_request(:get, 'https://jsonplaceholder.typicode.com/posts/2')
    #   .to_return(status: 200, body: '',
    #              headers: {
    #                'Content-Type' => 'application/json; charset: utf-8'
    #              })

    response = HTTParty.get("https://jsonplaceholder.typicode.com/posts/15")
    content_type = response.header['content-type']
    expect(content_type).to match 'application/json'
  end
end
