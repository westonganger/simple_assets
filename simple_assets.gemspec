lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_assets/version'

Gem::Specification.new do |s|
  s.name        = 'simple_assets'
  s.version     =  SimpleAssets::VERSION
  s.author	= "Weston Ganger"
  s.email       = 'weston@westonganger.com'
  s.homepage 	= 'https://github.com/westonganger/simple_assets'
  
  s.summary     = "Dead simple assets helper and management for Ruby. The main idea here is to promote re-usability for projects."

  s.description = s.summary 

  s.files = Dir.glob("{lib/**/*}") + %w{ LICENSE README.md Rakefile CHANGELOG.md }
  s.test_files  = Dir.glob("{spec/**/*}")
  s.require_path = 'lib'

  s.required_ruby_version = '>= 1.9.3'
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-reporters'
end
