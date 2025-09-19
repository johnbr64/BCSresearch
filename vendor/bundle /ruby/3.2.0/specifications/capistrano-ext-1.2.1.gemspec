# -*- encoding: utf-8 -*-
# stub: capistrano-ext 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-ext".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamis Buck".freeze]
  s.date = "2008-06-14"
  s.description = "Useful task libraries and methods for Capistrano".freeze
  s.email = "jamis@jamisbuck.org".freeze
  s.extra_rdoc_files = ["CHANGELOG.rdoc".freeze, "lib/capistrano/ext/assets/request-counter.rb".freeze, "lib/capistrano/ext/monitor.rb".freeze, "lib/capistrano/ext/multistage.rb".freeze, "lib/capistrano/ext/version.rb".freeze, "README".freeze]
  s.files = ["CHANGELOG.rdoc".freeze, "README".freeze, "lib/capistrano/ext/assets/request-counter.rb".freeze, "lib/capistrano/ext/monitor.rb".freeze, "lib/capistrano/ext/multistage.rb".freeze, "lib/capistrano/ext/version.rb".freeze]
  s.homepage = "http://www.capify.org".freeze
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--title".freeze, "Capistrano-ext".freeze, "--main".freeze, "README".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Useful task libraries and methods for Capistrano".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 2

  s.add_runtime_dependency(%q<capistrano>.freeze, [">= 1.0.0"])
end
