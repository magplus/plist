# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'plist'

Gem::Specification.new do |gem|
  gem.authors       = ['Ben Bleything', 'Patrick May']
  gem.email         = ['backend@magplus.com']
  gem.description   = %q{All-purpose Property List manipulation library}
  gem.summary       = %q{Plist is a library to manipulate Property List files, also known as plists. It can parse plist files into native Ruby data structures as well as generating new plist files from your Ruby objects.}
  gem.homepage      = 'https://github.com/magplus/plist'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'plist'
  gem.require_paths = ['lib']
  gem.version       = Plist::VERSION
end
