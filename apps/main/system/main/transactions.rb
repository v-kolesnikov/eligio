require "dry-transaction"
require "eligio/transactions"
require "main/container"
require "main/import"

module Main
  class Transactions < Eligio::Transactions
    configure do |config|
      config.container = Main::Container
    end
  end
end
