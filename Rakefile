require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "garota_da_fabrica"
    gem.summary = %Q{Cucumber steps em português para FactoryGirl}
    gem.description = %Q{Utilize os "steps_definitions" do FactoryGirl em português com o Cucumber.}
    gem.email = "jlbfalcao@gmail.com"
    gem.homepage = "http://github.com/jlbfalcao/garota_da_fabrica"
    gem.authors = ["Jorge Falcão"]
    gem.add_dependency "factory_girl"
    gem.add_dependency "cucumber"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler não está disponível. Instale com: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov não está disponível. Para rodar o RCov, digite: gem install relevance-rcov --source http://gems.github.com"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "garota_da_fabrica #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
