# -*- encoding: utf-8 -*-
# stub: image_suckr 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "image_suckr".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mauricio Miranda".freeze]
  s.date = "2014-07-04"
  s.description = "ImageSuckr is a ruby gem that allows you to get random images from Google for seeding purposes.".freeze
  s.email = "maurimiranda@gmail.com".freeze
  s.homepage = "https://github.com/maurimiranda/image_suckr".freeze
  s.licenses = ["GPL-3.0".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Gets images randomly from the web".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
  end
end
