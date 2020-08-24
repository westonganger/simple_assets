require File.expand_path(File.dirname(__FILE__) + '/lib/simple_assets/version')
require 'bundler/gem_tasks'

require "rake/testtask"
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task :console do
  require 'simple_assets'

  require 'irb'
  binding.irb
end

task default: :test
