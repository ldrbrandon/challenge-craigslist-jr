$LOAD_PATH.unshift(File.expand_path('.'))
require 'sinatra'
require 'sinatra/activerecord'
require 'shotgun'
require 'models/item'
#require 'models/user'

begin
require 'dotenv'
Dotenv.load
set :database, "sqlite3:///craigs.db"
#ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
rescue LoadError
end

