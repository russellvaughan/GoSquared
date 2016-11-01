GosquaredRails.configure do |config|
  config.site_token = ENV["GOSQUARED_SITE_TOKEN"] || "GSN-589158-M"
  config.track_local = true
end
