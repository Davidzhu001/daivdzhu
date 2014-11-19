Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  host = 'gsandboxe79d3917285f4ce8b8b210a4cf928a9e.mailgun.org'
config.action_mailer.default_url_options = { :host => 'https://api.mailgun.net/v2/sandboxe79d3917285f4ce8b8b210a4cf928a9e.mailgun.org' }
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.mailgun.org',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'postmaster@sandboxe79d3917285f4ce8b8b210a4cf928a9e.mailgun.org',
    :password       => 'b22758065ec4fc87912ca713f0b39e1c',
    :domain         => 'sandboxe79d3917285f4ce8b8b210a4cf928a9e.mailgun.org',
    :enable_starttls_auto => true
  }
  
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end



