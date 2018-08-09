require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AgunsaOCS
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.i18n.available_locales = [:es, :en]
    config.i18n.default_locale = :es
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.active_job.queue_adapter = :sidekiq
    config.i18n.default_locale = :'es'
    config.generators.javascript_engine = :js
  end
end

class String
  def to_bool
    return true if self == true   || self =~ /(true|t|yes|y|1)$/i
    return false if self == false  || self.blank? || self =~ /(false|f|no|n|0)$/i
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end
end
