source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ruby '2.3.1'
gem 'rails', '5.0.1'

# # user authentication and authorization by role
gem 'devise'
gem 'rack-cors'
gem 'active_model_serializers'
gem "binding_of_caller"

# # Added GEMS
gem 'pundit'
# gem 'simple_form', '3.2.1' # rails forms made easier
gem 'pubnub', '3.7.9' # for real-time websockety goodness
gem 'slim', '3.0.6' # lightweight HTML templating language
gem 'font-awesome-sass' # Web App Icons
gem 'sprockets-es6'

#
# # for my secrets
gem 'dotenv'
gem 'dotenv-rails'

# # pre install ready gems
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'angularjs-rails'
# gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'hirb'

gem 'puma', '~> 3.0'
gem 'pg', '~> 0.18'
gem 'rails_12factor'
gem 'angularjs-rails'


group :development, :test do
  gem 'bullet', '4.14.10' # helps us find ways to increase app performance
  gem 'annotate' # Annontates Models
  gem 'sqlite3'
  gem 'rspec-rails' # Test Helper
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'faker'
  gem 'database_cleaner'
  gem 'shoulda-matchers' # Model Testing Help for Rspec
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console' # Allows you to open a console in the browser by calling 'console' in the controller or in the view as a ruby code
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors' # Better Errors
  gem 'pry'
  gem 'listen', '~> 3.0.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]