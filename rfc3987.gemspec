
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rfc3987/version'

Gem::Specification.new do |spec|
  spec.name          = 'rfc3987'
  spec.version       = RFC3987::VERSION
  spec.authors       = ['kajisha']
  spec.email         = ['kajisha@gmail.com']

  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = 'https://github.com/kajisha/rfc3987'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'treetop'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
