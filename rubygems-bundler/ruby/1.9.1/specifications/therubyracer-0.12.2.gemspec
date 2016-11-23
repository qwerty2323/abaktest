# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{therubyracer}
  s.version = "0.12.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Charles Lowell}]
  s.date = %q{2015-04-07}
  s.description = %q{Call JavaScript code and manipulate JavaScript objects from Ruby. Call Ruby code and manipulate Ruby objects from JavaScript.}
  s.email = [%q{javascript-and-friends@googlegroups.com}]
  s.extensions = [%q{ext/v8/extconf.rb}]
  s.files = [%q{ext/v8/extconf.rb}]
  s.homepage = %q{http://github.com/cowboyd/therubyracer}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}, %q{ext}]
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{Embed the V8 JavaScript interpreter into Ruby}

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ref>, [">= 0"])
      s.add_runtime_dependency(%q<libv8>, ["~> 3.16.14.0"])
    else
      s.add_dependency(%q<ref>, [">= 0"])
      s.add_dependency(%q<libv8>, ["~> 3.16.14.0"])
    end
  else
    s.add_dependency(%q<ref>, [">= 0"])
    s.add_dependency(%q<libv8>, ["~> 3.16.14.0"])
  end
end
