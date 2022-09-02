source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-rails', '~> 0.3.9'
  gem 'factory_bot_rails', '~> 6.1', '>= 6.2'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1'
  gem 'shoulda-matchers', '~> 4.5', '>= 4.5.1'
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
