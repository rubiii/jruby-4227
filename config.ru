# Require the necessary init.rb file
require 'init'

set :run, false
set :environment, :production

require 'logger'
require 'syslog'

# deploy httpd server
run Sinatra::Application
