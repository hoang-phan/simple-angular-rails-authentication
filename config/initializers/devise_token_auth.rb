DeviseTokenAuth.setup do |config|
  config.default_confirm_success_url = "http://#{ENV['DOMAIN']}/login"
end
