# -*- encoding: utf-8 -*-
# stub: test-queue 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "test-queue".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aman Gupta".freeze]
  s.date = "2022-07-16"
  s.description = "minitest/rspec parallel test runner for CI environments".freeze
  s.email = "ruby@tmm1.net".freeze
  s.executables = ["rspec-queue".freeze, "minitest-queue".freeze, "testunit-queue".freeze, "cucumber-queue".freeze]
  s.files = ["bin/cucumber-queue".freeze, "bin/minitest-queue".freeze, "bin/rspec-queue".freeze, "bin/testunit-queue".freeze]
  s.homepage = "https://github.com/tmm1/test-queue".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "parallel test runner".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version
end
