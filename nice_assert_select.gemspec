# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nice_assert_select}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Nichols"]
  s.date = %q{2009-02-18}
  s.description = %q{make assert_select nicer}
  s.email = %q{josh@technicalpickles.com}
  s.files = ["README.rdoc", "VERSION.yml", "lib/nice_assert_select.rb", "test/test_helper.rb", "test/test_nice_assert_select.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/technicalpickles/nice_assert_select}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{make assert_select nicer}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
