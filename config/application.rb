require_relative 'boot'

require 'rails/all'


Bundler.require(*Rails.groups)

module TaskListApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.

    config.generators do |g|
      g.test_framework :rspec,
                       model_specs: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: false,
                       request_specs: false
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
    end
  end
end
