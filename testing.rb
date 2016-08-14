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

get "/terms/new" do
  @terms = Term.all

  haml :terms_new
end

#show
get "/terms/:id" do
  id = params["id"]
  @term = Term.find_by(id: id)

  haml :terms_show
end


put '/terms/:id' do
  id = params["id"]
  term = Term.find_by(id: id)
  # if term
  #   term.update_attributes(params[:term])
  #   redirect "/terms/#{term.id}"
  # else
    redirect "/"
  # end
end

#edit
get "/terms/:id/edit" do
  id = params["id"]
  @term = Term.find_by(id: id)

  haml :terms_edit
end
