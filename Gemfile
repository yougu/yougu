source "http://gemcutter.org"
source "http://gems.github.com"

bundle_path "vendor/bundler_gems"
#disable_system_gems

gem "rails", "2.3.5"

gem "haml"

only :test do
  gem "rspec-rails"
  gem "cucumber"
  gem "test-unit", "1.2.3" # <== 1.2.3 for Ruby 1.9.1 support..
  gem "ci_reporter"
  gem "relevance-rcov"
end
