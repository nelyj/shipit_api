require "spec_helper"

RSpec.describe ShipitAPI do
  it "has a version number" do
    expect(ShipitAPI::VERSION).not_to be nil
  end

  it "set credentials correctly" do
    ShipitAPI.configure do |config|
      config.x_shipit_email = "X_SHIPIT_EMAIL"
      config.x_shipit_access_token = "X_SHIPIT_ACCESS_TOKEN"
    end

    expect(ShipitAPI.config.x_shipit_email).to eq "X_SHIPIT_EMAIL"
    expect(ShipitAPI.config.x_shipit_access_token).to eq "X_SHIPIT_ACCESS_TOKEN"
  end
end
