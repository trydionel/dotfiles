require 'rubygems'
require 'pp'
require 'interactive_editor'

begin
  require 'wirble'

  Wirble.init
  Wirble.colorize
rescue LoadError => e
  puts "Wirble not installed: #{e}"
end

# Turn on Rails logger
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

# Add lib directory to the LOAD_PATH
begin
  lib = File.expand_path("lib")
  if File.exists?(lib)
    $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  end
end