# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{libv8}
  s.version = "3.16.14.17"
  s.platform = %q{x86-linux}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Charles Lowell}]
  s.date = %q{2016-11-20}
  s.description = %q{Distributes the V8 JavaScript engine in binary and source forms in order to support fast builds of The Ruby Racer}
  s.email = [%q{cowboyd@thefrontside.net}]
  s.homepage = %q{http://github.com/cowboyd/libv8}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}, %q{ext}]
  s.rubyforge_project = %q{libv8}
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{Distribution of the V8 JavaScript engine}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<rspec-spies>, ["~> 2"])
    else
      s.add_dependency(%q<rake>, ["~> 10"])
      s.add_dependency(%q<rake-compiler>, ["~> 0"])
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<rspec-spies>, ["~> 2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10"])
    s.add_dependency(%q<rake-compiler>, ["~> 0"])
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<rspec-spies>, ["~> 2"])
  end
end
