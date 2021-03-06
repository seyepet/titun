Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false
  
  # config/initializers/recaptcha.rb
  # Recaptcha.configure do |config|
  #   config.site_key  = '6LcL66IUAAAAAA_kQHU1997bGbxO1TkNATWk5jqj'
  #   config.secret_key = '6LcL66IUAAAAANmMZVMtuzP1Eqc1INSQPrdzGFfZ'
  #   # Uncomment the following line if you are using a proxy server:
  #   config.proxy = 'http://https://28ee0248daf84dc6acd4c61b427f67f7.vfs.cloud9.us-east-2.amazonaws.com/.au:8080'
  # end

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
# config.action_mailer.default_url_options = { :host => 'https://us-east-2.console.aws.amazon.com/cloud9/home?region=us-east-2' }

  
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors= true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  domain: 'mail.google.com',
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true }
  config.action_mailer.default_url_options = {:host => "localhost:3000"}  
  


end
