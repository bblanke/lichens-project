source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'



# Use sqlite3 as the database for Active Record
group :production, :staging do
  gem "pg"
end

group :development, :test do
	gem "sqlite3-ruby", "~> 1.3.0", :require => "sqlite3"
	#For deploying to ec2
	gem 'capistrano', '~> 3.1.0'
	gem 'capistrano-bundler', '~> 1.1.2'
	gem 'capistrano-rails', '~> 1.1.1'
	gem 'capistrano-rvm', github: "capistrano/rvm"
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

#Unicorn for the server
gem 'unicorn'

#AWS Storage
gem 'aws-sdk'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'devise', '3.0.0.rc'

gem "paperclip", "~> 3.0"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem "bootstrap-sass"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'rails_12factor', group: :production

ruby "2.0.0"

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
