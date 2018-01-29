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

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :authentication => :plain,
    :address => "smtp.mailgun.org",
    :port => 587,
    :domain => "sandbox076523e29eda45448fef821b52d7b95d.mailgun.org",
    :user_name => "postmaster@sandbox076523e29eda45448fef821b52d7b95d.mailgun.org",
    :password => "myflex"
  }

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify
end
