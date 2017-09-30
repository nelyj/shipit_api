module ShipitApi
  class Config
    def x_shipit_email(email = nil)
      @email = email if email
      @email || ENV['SHIPIT_X_EMAIL']
    end

    def x_shipit_access_token(access_token = nil)
      @access_token = access_token if access_token
      @access_token || ENV['SHIPIT_X_ACCESS_TOKEN']
    end

    def self.config
      @config ||= Config.new
    end

    def self.configure(&block)
      yield(self.config)
      nil
    end
  end
end
