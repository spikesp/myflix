require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module Myflix
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true

    config.assets.enabled = true
    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml
    end
    config.autoload_paths << "#{Rails.root}/lib"
  end
end

Raven.configure do |config|
  config.dsn = 'https://3af7ff6afdc644fe9c1aa5c4a9566e2c:d1199cb7410847cb9e95a948ed462a63@sentry.io/280368'
end
