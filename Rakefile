require "rake"

  begin
    require 'rspec/core/rake_task'
     RSpec::Core::RakeTask.new(:test) do |t|
     	t.pattern = "about/**/*.rb"
     	t.verbose = false
  end
  rescue LoadError
  end

desc "says hi"
task :say_hi do
	puts "hi there"
end

desc "tests for new files, unit tests should not leave temporary files around"
task :test_for_new_files do
  new_files = `git status --porcelain 2>/dev/null| grep "^??"`
  #number_of_new_files = `git status --porcelain 2>/dev/null| grep "^??" | wc -l`
  new_files= new_files.split("\n")
  number_of_new_files = new_files.count
  if number_of_new_files > 0
    new_files = new_files.join(", ")
    fail "#{number_of_new_files} new #{number_of_new_files>1?"files were":"file was"} created (#{new_files}), failing!"
  end
end

desc "runs all examples"
task :default => :test

desc "task for travis"
task :travis => [:test, :test_for_new_files]
