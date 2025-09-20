$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))
require 'rack'
require 'tilt'
require 'erb'
require 'active_record'
require 'bcrypt'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host:     'localhost',
  database: 'simpleweb1',
  username: 'users', 
  password: 'Xuanhuy21@nba' 
) 

module module Frack
  autoload :Router, 'frack/router'
  autoload :Application, 'frack/application'
end
