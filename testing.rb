require_relative 'models'

require 'sqlite3'
require 'active_record'
require 'sinatra'

require 'sinatra/reloader' if development?


terms = Term.all
terms.each do
  puts "#{terms.name}"
end

get "/" do
  haml :homepage
end
