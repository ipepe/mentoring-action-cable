source "https://rubygems.org"

ruby "2.5.7"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bootsnap", require: false
gem "pg", "~> 0.18", "< 0.20.0"
gem "rails", "< 5.1.0"

gem "dotenv-rails"
gem "jquery-rails"
gem "non-stupid-digest-assets"
gem "react-rails" # https://github.com/reactjs/react-rails
gem "sass-rails", "~> 5.0"
gem "slim-rails"
gem "uglifier", ">= 1.3.0"

source "https://rails-assets.org" do
  gem "rails-assets-bootswatch-sass", "< 4.0.0"
  gem "rails-assets-font-awesome", "< 5.0.0"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "bullet"
  gem "listen", "~> 3.0.5"
  gem "puma", "~> 3.0"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "web-console", ">= 3.3.0"
end
