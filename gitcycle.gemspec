# -*- encoding: utf-8 -*-
root = File.expand_path('../', __FILE__)
lib = "#{root}/lib"

$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "gitcycle"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://"
  s.summary     = %q{}
  s.description = %q{}

  s.executables = `cd #{root} && git ls-files bin/*`.split("\n").collect { |f| File.basename(f) }
  s.files = `cd #{root} && git ls-files`.split("\n")
  s.require_paths = %w(lib)
  s.test_files = `cd #{root} && git ls-files -- {features,test,spec}/*`.split("\n")

  s.add_development_dependency "aruba"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "lighthouse"
  s.add_development_dependency "rspec"

  s.add_dependency "launchy", "= 2.0.5"
  s.add_dependency "yajl-ruby", "= 1.1.0"
end