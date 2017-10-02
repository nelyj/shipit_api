require "spec_helper"

RSpec.describe ShipitAPI do
  before(:each) do
    ShipitAPI.configure do |config|
      config.x_shipit_email = 'staff@shipit.cl'
      config.x_shipit_access_token = 'v8fH62dPTULmrAEXxhzB'
    end
  end

  it 'has a version number' do
    expect(ShipitAPI::VERSION).not_to be nil
  end

  it 'set credentials correctly' do
    expect(ShipitAPI.config.x_shipit_email).to eq 'staff@shipit.cl'
    expect(ShipitAPI.config.x_shipit_access_token).to eq 'v8fH62dPTULmrAEXxhzB'
    expect(ShipitAPI.config.content_type).to eq 'application/json'
    expect(ShipitAPI.config.accept).to eq 'application/vnd.shipit.v'
  end

  it 'set block in package correctly' do
    package = ShipitAPI::Package.new({ version: '1' })
    binding.pry
  end
end
