# frozen_string_literal: true

source 'https://rubygems.org'

# git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in simpleoptparse.gemspec
gemspec

gem 'activesupport', '~> 7.1.4'
gem 'bundler'
gem 'rake'

group :test, optional: true do
  gem 'rspec'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
end

group :development do
  gem 'yard', "~> 0.9.37"
end
