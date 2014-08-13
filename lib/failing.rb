require 'concurrent'
require 'hamster'
require 'failing/version'

Concurrent::Future.new{ $stdout.puts('it works') }.execute
