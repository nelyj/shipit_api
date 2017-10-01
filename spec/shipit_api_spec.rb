require "spec_helper"

RSpec.describe ShipitApi do
  it "has a version number" do
    expect(ShipitApi::VERSION).not_to be nil
  end

  it "set credentials correctly" do
    ShipitApi.configure do |config|
      config.x_shipit_email = "X_SHIPIT_EMAIL"
      config.x_shipit_access_token = "X_SHIPIT_ACCESS_TOKEN"
    end

    expect(ShipitApi.config.x_shipit_email).to eq "X_SHIPIT_EMAIL"
    expect(ShipitApi.config.x_shipit_access_token).to eq "X_SHIPIT_ACCESS_TOKEN"
  end
end
