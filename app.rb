require 'sinatra'
require 'json'
require_relative './lib/string_calculator'

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

options "*" do
  response.headers["Allow"] = "GET, POST, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Content-Type, Authorization, X-Requested-With"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end

set :port, 3000
set :bind, '0.0.0.0'


get '/' do
  "String Calculator API is running!"
end

post '/calculate' do
  begin
    # Parse the JSON request body
    request_payload = JSON.parse(request.body.read)
    numbers = request_payload['numbers']

    # Call the StringCalculator.add method
    result = StringCalculator.add(numbers)

    # Respond with the result
    status 200
    { result: result }.to_json
  rescue JSON::ParserError
    status 400
    { error: 'Invalid JSON format' }.to_json
  rescue => e
    status 400
    { error: e.message }.to_json
  end
end
