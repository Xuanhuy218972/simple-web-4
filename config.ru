$LOAD_PATH.unshift << '.'
require 'lib/frack'
require 'app/controllers/users_controller'
require 'app/controllers/home_controller'
require 'app/controllers/sessions_controller'
require 'app/models/user'
require 'rack/session/cookie'

use Rack::Static, root: 'public', urls: ['/images', '/js', '/css']

use Rack::Session::Cookie, 
    key:'rack.session',
    path: '/',
    secret: 'your_secret_key_0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'

run Frack::Application