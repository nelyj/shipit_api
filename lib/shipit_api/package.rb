
module ShipitAPI
  class Package < Base
    def initialize(options = {})
      @year ||= Date.today.year
      @month ||=  Date.today.month
      @day ||= Date.today.day
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end

      @headers = ShipitAPI::Util.header(@version)
    end

    def create
    end

    def mass_create
    end

    def history(options = {})
      parameters = get_parameters(options)
      self.class.get('/packages', parameters, :headers => @headers)
    end

    private

    def get_parameters(options)
      options.empty?  ? { :query => { :year => @year, :month => @month } } : { :query => options }
    end
  end
end
