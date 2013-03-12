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
if Object.const_defined?("Rails")
  require 'logger'
  Rails.logger = Logger.new(STDOUT)
end

# Add lib directory to the LOAD_PATH
begin
  lib = File.expand_path("lib")
  if File.exists?(lib)
    $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
  end
end
