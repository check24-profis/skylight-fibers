source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby `cat .ruby-version`

gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'faker'
gem 'graphql'
gem 'graphql-client'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'skylight', github: 'check24-profis/skylight-ruby', branch: "fibers"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end
