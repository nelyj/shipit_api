module ShipitAPI
  class Config
    attr_accessor :x_shipit_email, :x_shipit_access_token, :content_type, :accept, :version

    def initialize
      @content_type = 'application/json'.freeze
      @accept ||= 'application/vnd.shipit.v'.freeze
      @version ||= '2'
    end
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure(&block)
    yield(config) if block_given?
  end
end
