$LOAD_PATH.unshift(File.expand_path('.'))

require 'sinatra'
require 'sinatra/activerecord'
require 'shotgun'
require 'models/item'

# begin
require 'dotenv'
Dotenv.load

set :database, ENV['DATABASE_URL']

# rescue LoadError
# end

get '/' do
  erb :index
end