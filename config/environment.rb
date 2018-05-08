require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
)

# ActiveRecord::Base.logger = Logger.new(STDOUT)

old_logger = ActiveRecord::Base.logger
# ActiveRecord::Base.logger = old_logger
ActiveRecord::Base.logger = nil

require_all 'app'
require_all 'lib'
require 'json'
require 'open-uri'
