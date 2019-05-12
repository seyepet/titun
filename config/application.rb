require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Titun
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

config.secret_key_base = '3174cd3e1390738ce33ca8c6ce9e51e51cbd42973805cd45a3c510b00097f17f4ec05bbdcf44230bbedb2a8d30fb84144898307e07e869addcd504d03fe8e153'