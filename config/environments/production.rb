Myflix::Application.configure do

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_assets = false

  config.assets.compress = true
  config.assets.js_compressor = :uglifier

  config.assets.compile = false

  config.assets.digest = true

  config.action_mailer.default_url_options = { :host => "weisuojiaoshou@gmail.com" }

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  :address => 'smtp-relay.sendinblue.com',
  :port => 587,
  :domain => 'weisuojiaoshou@gmail.com',
  :user_name => 'ENV[myflix_KEY]',
  :password => 'ENV[myflix_SECRET',
  :authentication => 'login',
  :enable_starttls_auto => true
  }

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify
end
