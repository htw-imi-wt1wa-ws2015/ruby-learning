require "rake"

  begin
    require 'rspec/core/rake_task'
     RSpec::Core::RakeTask.new(:spec) do |t|
     	t.pattern = "about/**/*.rb"
     	t.verbose = false
  end
  rescue LoadError
  end

desc "says hi"
task :say_hi do
	puts "hi there"
end

desc "runs all examples"
task :default => :spec
