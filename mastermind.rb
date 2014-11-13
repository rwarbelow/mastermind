lib_dir = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib_dir)
require_relative 'lib/cli'

require 'pry'
CLI.new($stdin, $stdout).call
