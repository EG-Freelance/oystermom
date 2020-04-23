source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'
group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.6'
end

group :production do
  # Use postgresql as the database for Active Record
  gem 'pg'
  # gem 'thin'
  gem 'rails_12factor'
end

gem 'json', '>= 1.8'

# Use paperclip for attaching images and videos to posts
gem 'paperclip', "~> 5.2.0"
gem 'paperclip-av-transcoder'

# Use blue-imp for photo gallery
gem 'blueimp-gallery'

# Use videojs for video gallery
gem 'videojs_rails'

# Use aws-sdk to connect to S3 bucket
gem 'aws-sdk'

# Use simple form for extra form-handling
gem 'simple_form'

# Use dig to handle nested hashes and arrays
gem 'ruby_dig'

# Use devise for user creation and organization
gem 'devise'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# steve gems
# gem 'unicorn'
gem 'puma'
gem 'material_icons'
group :assets do
  #gem 'jquery-smooth-scroll-rails'
  gem 'jquery-smooth-scroll-rails'#, :git => 'git@github.com:gretel/jquery-smooth-scroll-rails.git'
end

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# google-analytics-rails for G-Analytics
gem 'google-analytics-rails', '1.1.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

