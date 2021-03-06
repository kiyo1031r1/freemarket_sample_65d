require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FreemarketSample65d
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      %Q(#{html_tag}).html_safe
    end
    config.action_view.field_error_proc =  Proc.new { |html_tag, instance| %Q(#{html_tag}).html_safe }
     
    config.load_defaults 5.2
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      %Q(#{html_tag}).html_safe
    end
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.yml").to_s]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
