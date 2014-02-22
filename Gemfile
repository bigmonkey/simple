source 'https://rubygems.org'
ruby "2.0.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg', '0.17.1'

group :test do
	gem "selenium-webdriver", "2.40.0"
	gem 'capybara', '2.1.0'
	gem "database_cleaner", "1.2.0"
end

group :development, :test do
  gem 'factory_girl_rails', '4.4.0' 
	gem 'rspec-rails', '2.14.1'
  gem "pry", "0.9.12.6"  
  gem "pry-nav", "0.2.3"  
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.1.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.2.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 1.2'

#group :doc do
#  bundle exec rake doc:rails generates the API under doc/api.
#  gem 'sdoc', require: false
#end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'rails_12factor', '0.0.2', group: :production

# use unicorn for production and ubuntu
gem 'unicorn', '4.8.2'

# used to keep pw's and tokens secret
gem "figaro", "0.7.0"