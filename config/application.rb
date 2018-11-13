require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

<<<<<<< HEAD
module Project01
=======
module Projec01
>>>>>>> 775e15c3296e0da7b98b7c911688fe3c4f3eaa37
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
<<<<<<< HEAD
require "carrierwave/orm/activerecord"
=======
>>>>>>> 775e15c3296e0da7b98b7c911688fe3c4f3eaa37
