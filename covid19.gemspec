require_relative 'lib/covid19/version'

Gem::Specification.new do |spec|
  spec.name          = "covid19"
  spec.version       = Covid19::VERSION
  spec.authors       = ["Oroko"]
  spec.email         = ["aoroko09@gmail.com"]

  spec.summary       = 'Covid19 cli gem'
  spec.description   = 'A gem about covid 19 data for specific continent and country'
  spec.homepage      = 'https://github.com/Oroko/covid19'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/Oroko/covid19'
  spec.metadata["changelog_uri"] = 'https://github.com/Oroko/covid19'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('httparty')
  spec.add_runtime_dependency('require_all')
  spec.add_development_dependency('pry')
end
