source 'https://rubygems.org'

ruby '2.2.0'

gem 'active_model_serializers',
  github: 'rails-api/active_model_serializers',
  branch: '0-8-stable'

gem 'analytics-ruby', '~> 2.0.0'
gem 'attr_encrypted'
gem 'aws-sdk', '~> 1.0'
gem 'bootstrap-kaminari-views'
gem 'bootstrap-sass'
gem 'bugsnag'
gem 'cancan'
gem 'coffee-script'
gem 'connection_pool'
gem 'countries'
gem 'country_select'
gem 'customerio'
gem 'curb'
gem 'devise'
gem 'draper'
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
gem 'faraday', '~> 0.9.0'
gem 'faraday_middleware'
gem 'friendly_id', github: 'norman/friendly_id'
gem 'gemoji', github: 'github/gemoji'
gem 'gibbon'
gem 'git'
gem 'github-markdown'
gem 'globalid'
gem 'google-api-client'
gem 'hogan_assets'
gem 'html-pipeline'
gem 'htmlentities'
gem 'jbuilder'
gem 'jbuilder_cache_multi'
gem 'jquery-rails'
gem 'kaminari'
gem 'leftronic'
gem 'librato-rails'
gem 'lograge'
gem 'markerb'
gem 'miro' # pulls colors from images
gem 'multi_fetch_fragments'
gem 'mustache'
gem 'omniauth-facebook', '1.4.0' # http://stackoverflow.com/questions/11597130/omniauth-facebook-keeps-reporting-invalid-credentials
gem 'omniauth-github'
gem 'omniauth-twitter'
# gem 'oink'
gem 'pg'
gem 'pghero'
gem 'puma'
gem 'pusher'
gem 'premailer', github: 'whatupdave/premailer'
gem 'premailer-rails'
gem 'rack-cors'
gem 'rack-proxy'
gem 'rails', '4.2.0'
gem 'react-rails', '~> 1.0.0.pre', github: 'reactjs/react-rails'
gem 'redcarpet'
gem 'redis'
gem 'responders', '~> 2.0.0'
gem 'sanitize'
gem 'sass-rails'
gem 'sequenced', '~> 1.5.0'
gem 'sidekiq'
gem 'sparkr'
gem 'split', :require => 'split/dashboard'
gem 'stripe'
gem 'truncate_html'
gem 'uglifier'
gem 'warden', "~> 1.2.3"
gem 'workflow'
gem 'zeroclipboard-rails'
gem 'fast-stemmer'

source 'https://rails-assets.org' do
  gem 'rails-assets-backbone',            '1.0.0'
  gem 'rails-assets-dropzone',            '3.9.0'
  gem 'rails-assets-es5-shim',            '4.0.3'
  gem 'rails-assets-ink',                 '1.0.5'
  gem 'rails-assets-jquery-autosize',     '1.18.9'
  gem 'rails-assets-jquery-cookie',       '1.4.0'
  gem 'rails-assets-jquery-textcomplete', '0.2.6'
  gem 'rails-assets-marked',              '0.3.2'
  gem 'rails-assets-moment',              '2.5.0'
  gem 'rails-assets-normalize-css',       '2.1.3'
  gem 'rails-assets-notify.js',           '1.2.0'
  gem 'rails-assets-nprogress',           '0.1.6'
  gem 'rails-assets-numeral',             '1.5.3'
  gem 'rails-assets-jquery-timeago'
  gem 'rails-assets-jquery.inview',       '1.0.0'
  gem 'rails-assets-underscore',          '1.7.0'
  gem 'rails_stdout_logging', group: [:development, :production]
end

group :development, :test do
  gem 'active_record_query_trace'
  gem 'capybara'
  gem 'database_cleaner'
  # gem 'debugger' # enable once ruby 2.1.1 is supported
  gem 'email_spec'
  gem 'fakeweb'
  gem 'ffaker'
  # gem "letter_opener"
  # gem 'i18n-debug'
  gem 'machinist', '~> 2'
  gem 'poltergeist'
  gem 'pry', require: false
  gem 'quiet_assets'
  gem 'rest_client'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'rspec-collection_matchers'
  gem 'spring-commands-rspec'
  gem 'syntax'
  gem 'teaspoon'
  gem 'terminal-table'
  gem 'timecop'
end

group :development do
  gem 'guard'
  gem 'guard-rspec', require: false
  # gem 'rack-mini-profiler'
  # gem 'sql-logging'
  # gem 'ruby-prof'
  # gem 'stackprof'
  # gem 'webshot'
end

group :test do
  gem 'autotest-standalone'
  gem 'codeclimate-test-reporter', require: nil
  gem 'rspec-sidekiq'
  gem 'simplecov'
  gem 'test_after_commit'
  gem 'vcr'
  gem 'webmock'
end

group :production do
  gem 'dalli'
  gem 'heroku-deflater'
  gem 'memcachier'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
  gem 'skylight', '~> 0.5'
end
