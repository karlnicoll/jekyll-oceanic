# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-oceanic"
  spec.version       = "1.1.0"
  spec.authors       = ["Karl Nicoll"]
  spec.email         = ["karl@karlnicoll.net"]

  spec.summary       = "A modern, blue, template for Jekyll blogs."
  spec.homepage      = "https://github.com/karlnicoll/jekyll-oceanic"
  spec.license       = "MIT"

  spec.description = <<-EOF
  Oceanic is intended as a simple theme for Jekyll websites, with a main focus
  on blogs.
  EOF

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/karlnicoll/jekyll-oceanic/issues",
    "documentation_uri" => "https://github.com/karlnicoll/jekyll-oceanic/blob/master/README.md",
    "source_code_uri"   => "https://github.com/karlnicoll/jekyll-oceanic"
  }

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17"
  spec.add_runtime_dependency "jekyll-paginate-v2", "3.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "rouge", "4.0"

  spec.add_development_dependency "bundler"
end
