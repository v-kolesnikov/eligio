require "dry/web/umbrella"
require_relative "settings"

module Eligio
  class Container < Dry::Web::Umbrella
    configure do
      config.name = :core
      config.settings_loader = Eligio::Settings
    end

    load_paths! "lib", "system"

    def self.settings
      config.settings
    end
  end
end
