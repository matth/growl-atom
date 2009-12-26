$:.unshift 'lib'
require 'growl-atom'

task :uninstall do
	# Remove gem
	sh "gem uninstall growl-atom -a"
end

task :install => [:gem] do
	# Install local gem
	sh "gem install -l growl-atom-#{GrowlAtom::VERSION}.gem"
end

task :gem do
	sh 'gem build growl-atom.gemspec'
end