module ShipitAPI
  class Util
    def self.header(version)
      { 'Content-Type' => ShipitAPI.config.content_type, 'Accept' => accept(version), 'X-Shipit-Access-Token' => ShipitAPI.config.x_shipit_access_token, 'X-Shipit-Email' => ShipitAPI.config.x_shipit_email }
    end

    def self.accept(version='2')
      "#{ShipitAPI.config.accept}#{version}"
    end
  end
end
