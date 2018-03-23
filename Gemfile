source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

#gem 'activerecord-mysql2-adapter'
#gem 'mysql2'
gem 'mysql2', '>= 0.3.18', '< 0.5'
#gem 'mysql2', :git => 'git://github.com/brianmario/mysql2.git'
#gem 'mysql2', '0.3.20'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'coffee-script-source', '1.8.0'

gem 'jquery-rails', '~> 4.3.1'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.9' #, platforms: [:ruby, :x64_mingw]

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.3'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'faker',          '~> 1.7.3'
gem 'will_paginate',           '~> 3.1.6'
gem 'bootstrap-will_paginate', '~> 1.0.0'

gem 'figaro'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'win32console', '1.3.2', platforms: [:mingw, :x64_mingw]
  gem 'wdm', '>= 0.1.0' if Gem.win_platform?
  gem 'minitest-reporters',       '~> 1.1.14'
  gem 'guard',                    '~> 2.14.0'
  gem 'guard-minitest',           '~> 2.4.4'
  gem 'rails-controller-testing'
  # Use sqlite3 as the database for Active Record
  #gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
end

group :production do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
