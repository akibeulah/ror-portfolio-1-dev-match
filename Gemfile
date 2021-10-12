source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Gems for bootstrap support
gem 'bootstrap', '~> 4.5.0'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
# Modal Support
gem 'responders'
# Gem for quick comments
gem 'commontator'
# Gem for font-awesome support
gem 'font-awesome-sass', '~> 5.13.0'
# Gem for messaging
gem 'redis', '~> 4.0'
# Gem for pagination
gem 'pagy', '~> 3.5'
# Gem for searches
gem 'simple_form'
# Gem for supporting mobile views
gem 'mobylette', :git => 'https://github.com/AkiBeulah/mobylette.git'
# Gem for image management
gem "paperclip", "~> 6.0.0"
# Gem for bootstrap form... FML.
gem 'bootstrap_form'
#Use postgresql as database for production
  gem 'pg'
  gem 'pg_search'
group :production do
  gem 'rails_12factor'
end
gem 'solargraph', group: :development
gem 'rubocop', group: :development
# Gem for user authentication
gem 'devise', '~> 4.7', '>= 4.7.1'
# Gem for online transactions.
gem 'stripe', '~> 5.1', '>= 5.1.1'
# Gem for hiding secret keys
gem 'figaro', '~> 1.1', '>= 1.1.1'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
  group :development do
    gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
    gem 'rack-livereload'
  end

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
