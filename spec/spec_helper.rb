$Load_Path.unshift(File.expand_path('.'))
require 'capybara/rspec'
require 'cljr_app'
require 'shoulda-matchers'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.before do
    #Post.destroy_all
  end
end