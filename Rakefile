$:.unshift 'lib'
require 'growl-gmail'

launch_agent = "net.matthaynes.growl.gmail"
launch_agent_plist = launch_agent + ".plist"
launch_agents_dir = File.expand_path('~') + "/Library/LaunchAgents/"

task :uninstall do
	
	# Remove Launch Agent
	sh "launchctl unload #{launch_agents_dir + launch_agent_plist}" 
	sh "rm #{launch_agents_dir + launch_agent_plist}"
	
	# Remove gem
	sh "gem uninstall growl-gmail -a"

end

task :install => [:gem] do

	# Install local gem
	sh "gem install -l growl-gmail-#{GrowlGmail::VERSION}.gem"
	
	# Create Launch Agent
	if (!File.directory?(launch_agents_dir))
		sh "mkdir #{launch_agents_dir}"
	end
	
	sh "cp #{launch_agent_plist} #{launch_agents_dir + launch_agent_plist}"
	sh "launchctl load #{launch_agents_dir + launch_agent_plist}"
	sh "launchctl start #{launch_agent}"	

end

task :gem do
	sh 'gem build growl-gmail.gemspec'
end