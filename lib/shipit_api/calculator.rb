module ShipitApi
  class Calculator
    include HTTParty
    base_uri ShipitApi::VERSION::BASE_URL

    def get(height=10, heigth=10, length=10, weigth=1)
    end
  end
end
