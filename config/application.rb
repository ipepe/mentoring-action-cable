require_relative 'boot'

require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
# require 'action_mailer/railtie'
# require 'active_job/railtie'
require 'action_cable/engine'
# require 'rails/test_unit/railtie'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AcWorkshop
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.i18n.default_locale = :en
    config.i18n.available_locales = [:en]

    # config.active_job.queue_adapter = :sidekiq
    config.generators.stylesheets = false
    config.generators.javascripts = false
    config.generators.jbuilder = false
    config.generators.helper = false
    config.generators.test_framework(:test_unit, fixture: false)
    config.generators.template_engine :slim

    config.action_cable.url = '/cable'

    def theme_names
      @theme_names ||= %w(
        amelia
        bootstrap3
        cerulean
        cosmo
        cyborg
        darkly
        flatly
        journal
        lumen
        paper
        readable
        sandstone
        simplex
        slate
        spacelab
        united
        yeti
      )
    end
  end
end
