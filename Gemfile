source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.1.0.beta1'

# backend
gem 'pg'
gem 'polyamorous', github: 'activerecord-hackery/polyamorous'
gem 'ransack', github: 'activerecord-hackery/ransack', branch: 'rails-4.1'
gem 'kaminari'

# frontend
gem 'slim'
gem 'simple_form'

gem 'coffee-rails'
gem 'jquery-rails'
gem 'uglifier'
gem 'therubyracer', platforms: :ruby
gem 'quiet_assets'
gem 'less-rails'
gem 'bootstrap-sass-rails'
gem 'twitter-bootstrap-rails'

group :production do
 gem 'unicorn'
end

group :development do
  gem 'debugger'

  # deploy
  gem 'capistrano', '~> 2.15.5'
  gem 'capistrano-rbenv'
end
