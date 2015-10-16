require './config/environment'

use ::Rack::Chunked
run Lotus::Container.new
