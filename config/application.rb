require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SimpleAuthentication
  class Application < Rails::Application
    config.assets.paths += [
      Rails.root.join(
        'lib', 'assets', 'bower_components',
        'bootstrap-sass-official', 'assets', 'stylesheets'
      ),
      Rails.root.join(
        'lib', 'assets', 'bower_components',
        'bootstrap-sass-official', 'assets', 'fonts'
      )
    ]
    
    config.action_mailer.default_url_options = { host: ENV['DOMAIN'] }
  end
end
