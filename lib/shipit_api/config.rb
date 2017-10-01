module ShipitAPI
  class Config
    attr_accessor :x_shipit_email, :x_shipit_access_token
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure(&block)
    yield(config) if block_given?
  end
end
