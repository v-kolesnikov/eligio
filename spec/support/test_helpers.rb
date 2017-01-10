module TestHelpers
  module_function

  def app
    Eligio::Application.app
  end

  def rom
    Eligio::Container["persistence.rom"]
  end

  def db_connection
    rom.gateways[:default].connection
  end
end
