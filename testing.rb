require_relative 'models'

require 'sqlite3'
require 'active_record'
require 'sinatra'

require 'sinatra/reloader' if development?

after do
  ActiveRecord::Base.connection.close
end

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

#create new
post "/terms/new" do
  term = Term.create(params)

  redirect "/terms/#{term.id}"
end

#show term
get "/terms/:id" do
  id = params["id"]
  @term = Term.find_by(id: id)

  haml :terms_show
end

#put update
put '/terms/:id' do
  id = params["id"]
  term = Term.find_by(id: id)
  if term
    term.update_attributes(params["term"])
    redirect "/terms/#{term.id}"
  else
    redirect "/"
  end
end

#edit
get "/terms/:id/edit" do
  id = params["id"]
  @term = Term.find_by(id: id)

  haml :terms_edit
end

#show categories
get "/categories" do
  @categories = Category.all

  haml :categories
end

#show category
get "/category/:id" do
  id = params["id"]
  @category = Category.find_by(id: id)

  haml :categories_show
end
