module ShipitApi
  class Package
    include HTTParty
    base_uri ShipitApi::VERSION::BASE_URL

    def create
    end

    def mass_create
    end
  end
end
