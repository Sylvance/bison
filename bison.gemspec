# frozen_string_literal: true

require_relative "lib/bison/version"

Gem::Specification.new do |spec|
  spec.name = "bison"
  spec.version = Bison::VERSION
  spec.authors = ["omusamurai"]
  spec.email = ["9350722+Sylvance@users.noreply.github.com"]

  spec.summary = "Bison creates end to end applications."
  spec.description = "Bison offers tools, frameworks, and services to cover entire application development lifecycle."
  spec.homepage = "https://github.com/Sylvance/bison/blob/main/README.md"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Sylvance/bison"
  spec.metadata["changelog_uri"] = "https://github.com/Sylvance/bison/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
