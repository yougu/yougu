# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

gem 'ci_reporter'
require 'ci/reporter/rake/rspec'
require 'ci/reporter/rake/test_unit' # use this if you're using Test::Unit