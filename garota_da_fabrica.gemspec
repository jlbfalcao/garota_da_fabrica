# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{garota_da_fabrica}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jorge Falc\303\243o"]
  s.date = %q{2011-03-16}
  s.description = %q{Utilize os "steps_definitions" do FactoryGirl em português com o Cucumber.}
  s.email = %q{jlbfalcao@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "garota_da_fabrica.gemspec",
    "lib/garota_da_fabrica.rb",
    "test/helper.rb",
    "test/test_garota_da_fabrica.rb"
  ]
  s.homepage = %q{http://github.com/jlbfalcao/garota_da_fabrica}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Cucumber steps em português para FactoryGirl}
  s.test_files = [
    "test/helper.rb",
    "test/test_garota_da_fabrica.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<factory_girl>, [">= 0"])
      s.add_runtime_dependency(%q<cucumber>, [">= 0"])
    else
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
    end
  else
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
  end
end

