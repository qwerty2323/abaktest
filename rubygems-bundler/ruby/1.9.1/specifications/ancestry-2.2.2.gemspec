# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ancestry}
  s.version = "2.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Stefan Kroes}]
  s.date = %q{2016-11-01}
  s.description = %q{  Ancestry allows the records of a ActiveRecord model to be organized in a tree
  structure, using a single, intuitively formatted database column. It exposes
  all the standard tree structure relations (ancestors, parent, root, children,
  siblings, descendants) and all of them can be fetched in a single sql query.
  Additional features are named_scopes, integrity checking, integrity restoration,
  arrangement of (sub)tree into hashes and different strategies for dealing with
  orphaned records.
}
  s.email = %q{s.a.kroes@gmail.com}
  s.homepage = %q{http://github.com/stefankroes/ancestry}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{Organize ActiveRecord model into a tree structure}

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
