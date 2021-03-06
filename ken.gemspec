# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ken}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{michael}]
  s.date = %q{2011-07-08}
  s.email = %q{ma[at]zive[dot]at}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.textile",
    "TODO"
  ]
  s.files = [
    "Gemfile",
    "History.txt",
    "LICENSE",
    "README.textile",
    "Rakefile",
    "TODO",
    "VERSION",
    "examples/artist.rb",
    "examples/artist_links.rb",
    "ken.gemspec",
    "lib/ken.rb",
    "lib/ken/attribute.rb",
    "lib/ken/collection.rb",
    "lib/ken/logger.rb",
    "lib/ken/property.rb",
    "lib/ken/resource.rb",
    "lib/ken/session.rb",
    "lib/ken/topic.rb",
    "lib/ken/type.rb",
    "lib/ken/util.rb",
    "lib/ken/view.rb",
    "rails/init.rb",
    "tasks/ken.rb",
    "tasks/spec.rb",
    "test/fixtures/music_artist.json",
    "test/fixtures/the_police.json",
    "test/fixtures/the_police_topic.json",
    "test/integration/ken_test.rb",
    "test/test_helper.rb",
    "test/unit/attribute_test.rb",
    "test/unit/property_test.rb",
    "test/unit/resource_test.rb",
    "test/unit/session_test.rb",
    "test/unit/topic_test.rb",
    "test/unit/type_test.rb",
    "test/unit/view_test.rb"
  ]
  s.homepage = %q{http://github.com/michael/ken}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{Ruby API for Accessing the Freebase}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<extlib>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<jnunemaker-matchy>, ["= 0.4.0"])
    else
      s.add_dependency(%q<extlib>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<jnunemaker-matchy>, ["= 0.4.0"])
    end
  else
    s.add_dependency(%q<extlib>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<jnunemaker-matchy>, ["= 0.4.0"])
  end
end

