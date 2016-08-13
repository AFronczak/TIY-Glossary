require_relative 'models'

require 'sqlite3'
require 'active_record'
require 'sinatra'

require 'sinatra/reloader' if development?


# terms = Term.all
# terms.each do
#   puts "#{terms.name}"
# end

get "/" do
  @terms = Term.all
  @categories = Category.all

  @lastfive = @terms.last(5)

  haml :homepage
end

get "/terms" do
  @terms = Term.all

  haml :terms
end
