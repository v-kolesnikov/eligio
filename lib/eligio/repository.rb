require "rom-repository"
require "eligio/container"
require "eligio/import"

Eligio::Container.boot! :rom

module Eligio
  class Repository < ROM::Repository::Root
    include Eligio::Import.args["persistence.rom"]
  end
end
