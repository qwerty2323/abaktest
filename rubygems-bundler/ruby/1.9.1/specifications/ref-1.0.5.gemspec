# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ref}
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Brian Durand}]
  s.date = %q{2013-05-20}
  s.description = %q{Library that implements weak, soft, and strong references in Ruby that work across multiple runtimes (MRI, REE, YARV, Jruby, Rubinius, and IronRuby). Also includes implementation of maps/hashes that use references and a reference queue.}
  s.email = [%q{bbdurand@gmail.com}]
  s.extra_rdoc_files = [%q{README.rdoc}]
  s.files = [%q{README.rdoc}]
  s.homepage = %q{http://github.com/bdurand/ref}
  s.licenses = [%q{MIT}]
  s.rdoc_options = [%q{--charset=UTF-8}, %q{--main}, %q{README.rdoc}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.2}
  s.summary = %q{Library that implements weak, soft, and strong references in Ruby.}

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
