# frozen_string_literal: true

$:.push File.expand_path("../lib", __FILE__)
require "ipay/version"

Gem::Specification.new do |spec|
  spec.name          = "ipay-rails"
  spec.version       = Ipay::VERSION
  spec.authors       = ["Andres Coca"]
  spec.email         = ["info@parze.co"]
  spec.summary       = %q{Ipay API Wrapper}
  spec.description   = %q{Ipay API Wrapper V2 API}
  spec.homepage      = "https://parze.co"
  spec.license       = "MIT"
  spec.require_paths = ["lib"]
  spec.add_dependency "faraday"
  spec.add_dependency "ipay"
end
