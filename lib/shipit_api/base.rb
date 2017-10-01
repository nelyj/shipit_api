require 'httparty'
require 'pry'

module ShipitAPI
  class Base
    include HTTParty

    BASE_URL = 'http://api.shipit.cl/v/'.freeze
    base_uri BASE_URL
  end
end
