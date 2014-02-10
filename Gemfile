source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.1.0.beta1'

# backend
gem 'pg'
gem 'polyamorous', github: 'activerecord-hackery/polyamorous'
gem 'ransack', github: 'activerecord-hackery/ransack', branch: 'rails-4.1'

# frontend
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'less-rails'
gem 'therubyracer', platforms: :ruby
gem 'twitter-bootstrap-rails'
gem 'simple_form'
gem 'quiet_assets'
gem 'bootstrap-sass-rails'

group :production do
 gem 'unicorn'
end

group :development do
  gem 'debugger'
  gem 'capistrano', '~> 2.15.5'
  gem 'capistrano-rbenv'
end