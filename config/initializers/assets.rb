# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( now_ui_kit.js )
Rails.application.config.assets.precompile += %w( bootstrap_datepicker.js )
Rails.application.config.assets.precompile += %w( nouislider.min.js )
Rails.application.config.assets.precompile += %w( bootstrap_switch.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( tether.min.js )
Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( jquery.3.2.1.min.js )
# Rails.application.config.assets.precompile += %w( site.js )
# Rails.application.config.assets.precompile += %w( responsiveslides.min.js )
# Rails.application.config.assets.precompile += %w( underscore_min.js )
# Rails.application.config.assets.precompile += %w( moment_2.2.1.js )
# # css
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( now_ui_kit.css )
Rails.application.config.assets.precompile += %w( demo.css )