# frozen_string_literal: true

require_relative 'lib/language_colors/version'

Gem::Specification.new do |spec|
  spec.name          = 'language_colors'
  spec.version       = LanguageColors::VERSION
  spec.authors       = ['Syed AbuTalib']
  spec.email         = ['syedabutalib@github.com']

  spec.summary       = "Get a language's color on github."
  spec.homepage      = 'https://github.com/SyedAbutalib/language_colors'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SyedAbutalib/language_colors'
  spec.metadata['changelog_uri'] = 'https://github.com/SyedAbutalib/language_colors'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
