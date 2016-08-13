require 'sqlite3'
require 'active_record'

# use Rack::MethodOveride
# use Rack::Flash

# ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "playground.db"
)

class Category < ActiveRecord::Base
  has_many :terms
end

class Term < ActiveRecord::Base
  belongs_to :category
end
