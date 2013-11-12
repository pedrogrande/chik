source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', '~> 2.3.2.2'
gem 'cancan'
gem 'devise'
gem 'rolify'
gem 'simple_form', '>= 3.0.0.rc'
gem 'ckeditor_rails', :git => 'https://github.com/tsechingho/ckeditor-rails'
gem 'carrierwave'
gem "fog", "~> 1.3.1"
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'sqlite3'
end
group :development, :test do
  gem 'thin'
end
group :production do
  gem 'thin'
  gem 'rails_12factor'
  gem 'pg'
  gem 'newrelic_rpm'
end
