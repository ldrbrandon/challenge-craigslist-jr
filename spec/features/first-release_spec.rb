require './spec_helper'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe 'Home page' do
  it "should load the home page" do
    get '/'
    expect(last_response).should be_ok
  end
end