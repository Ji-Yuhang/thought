source 'https://gems.ruby-china.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rb-readline'
gem 'rails', '4.2.5'
gem 'rake'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
gem 'mongoid', '~> 5.0.0'
# gem 'mongoid-rails', '~> 5.0'
gem 'bson'
gem 'bson_ext'
gem 'mongoid_taggable'
gem 'mongoid_taggable_on'

gem 'mongoid-geospatial'
gem 'mongoid_alize'

gem 'better_errors'
gem 'binding_of_caller'
gem 'tzinfo'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer'#, platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'rails-i18n', '~> 4.0.5'

gem 'whenever', :require => false
gem 'china_sms', :github => "stockcode/china_sms"

gem 'haml'
gem 'devise'
gem 'devise-token_authenticatable'
gem 'rucaptcha','~> 0.2.5'
gem 'switch_user'
gem 'pundit'
gem 'rolify'
gem 'haml-rails'
gem 'bootstrap-sass'
gem 'kaminari'
gem 'responders', '~> 2.0'

gem 'redcarpet'

gem 'select2-rails'
#gem "therubyracer"



gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails'

gem 'jquery-fileupload-rails'

gem 'bootstrap-datepicker-rails'

gem "mongoid-paperclip", :require => "mongoid_paperclip"

gem 'rufus-scheduler', '~> 3.1', '>= 3.1.7'
gem 'rack-contrib', '~> 1.4'

gem 'grape-entity'

gem 'grape-swagger'

gem 'activeresource', :require => 'active_resource'

gem "activeresource-response"

gem 'hashie-forbidden_attributes'
gem 'sunspot_rails'
# gem 'sunspot_solr'

gem 'sunspot_mongo'

gem 'rest-client'
gem 'httparty'
gem 'workflow', '~> 1.2'
gem 'aasm'
gem 'resque'
gem 'resque-web', require: 'resque_web'
gem 'resque-pool'
gem 'resque-scheduler'
gem 'resque-scheduler-web'

#gem 'oneapm_rpm'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'capistrano-rails', group: :development

gem 'quiet_assets'

gem 'faker'
gem 'mongoid-tree', :require => 'mongoid/tree'
gem 'best_in_place'
gem 'pry'
gem 'pry-rails', :group => :development
gem 'chinese_pinyin'

gem 'jquery-validation-rails'

gem 'rabl'
gem 'gon'
gem 'alipay', :git => "git://github.com/stockcode/alipay.git" #:path => "../alipay" #支付宝

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#Use JSON Web Token 验证
gem 'jwt'

gem 'wisper'

gem 'rack-mini-profiler'

gem 'exception_notification'

gem 'bearychat-notifier'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-rspec', require: false
end
group :test do

  gem 'simplecov', :require => false
  gem 'capybara'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'factory_girl_rails'
  gem 'mongoid-rspec'
  gem 'grape-entity-matchers'

end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'meta_request'
end

group :production do
  #gem 'pg'
  gem 'rails_12factor'
end

