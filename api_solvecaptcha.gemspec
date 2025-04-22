# frozen_string_literal: true

require_relative "lib/api_solvecaptcha/version"

Gem::Specification.new do |spec|
  spec.name = "solvecaptcha-ruby"
  spec.version = ApiSolveCaptcha::VERSION
  spec.authors = ["solvecaptcha.com"]

  spec.summary = "Solvercaptcha API wrapper for Ruby."
  spec.description = "Ruby package for easy integration with the API of solvecaptcha captcha solving service to bypass recaptcha, funcaptcha, geetest and solve any other captchas."
  spec.homepage = "https://solvecaptcha.com//"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/solvercaptcha/solvecaptcha-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/solvercaptcha/solvecaptcha-ruby/releases"
  spec.metadata["github_repo"] = "ssh://github.com/solvercaptcha/solvecaptcha-ruby"
  spec.metadata["bug_tracker_uri"] = "https://github.com/solvercaptcha/solvecaptcha-ruby/issues"
  spec.metadata["keywords"] = "Solvercaptcha, captcha solver, captcha bypass, Ruby, automation, CAPTCHA API, CAPTCHA recognition, anti-captcha, reCAPTCHA, OCR, image recognition, human verification, bot protection, recaptcha"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir       = "bin"
  spec.executables  = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
