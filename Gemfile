# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'slim-rails'
gem 'webpacker'
gem 'bootstrap', '~> 4.0.0'
gem 'seedbank'
gem 'jquery-rails'
gem 'kaminari'
gem 'bootstrap4-kaminari-views'
gem 'jquery-rails'
gem 'font-awesome-rails'
gem 'active_model_serializers'
gem 'faker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'bundler-audit', require: false
  gem 'brakeman', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
  gem 'rubocop', '0.55.0', require: false
  gem 'overcommit'
  gem 'foreman'
  gem 'scss_lint', require: false
  gem 'slim_lint', require: false
  gem 'capistrano'
  gem 'capistrano-bundler', require: false
  gem 'capistrano-nvm'
  gem 'capistrano-rails', require: false
  gem 'capistrano-rails-db'
  gem 'capistrano-rbenv'
  gem 'capistrano-secrets-yml'
  gem 'capistrano-yarn'
  gem 'capistrano3-puma'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'bootsnap', require: false
