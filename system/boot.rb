require "byebug" if ENV["RACK_ENV"] == "development"
require "pry" if ENV["RACK_ENV"] == "development"

require_relative "eligio/container"

Eligio::Container.finalize! do |container|
end

app_paths = Pathname(__FILE__).dirname.join("../apps").realpath.join("*")
Dir[app_paths].each { |f| require "#{f}/system/boot" }

require_relative "eligio/application"
