# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "oceanic"
  spec.version       = "0.1.0"
  spec.authors       = ["Karl Nicoll"]
  spec.email         = ["karl@karlnicoll.net"]

  spec.summary       = "A modern, blue-ish theme for Jekyll blogs."
  spec.homepage      = "https://github.com/karlnicoll/jekyll-oceanic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.13"
  spec.add_runtime_dependency "jekyll-paginate-v2", "3.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "rouge", "3.20"


  spec.add_development_dependency "bundler"
end
