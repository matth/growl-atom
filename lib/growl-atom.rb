require 'rubygems'
require 'growl'
require 'net/http'
require 'net/https'
require 'rexml/document'

module GrowlAtom

	VERSION = "0.0.1"
	
	def GrowlAtom.gem_dir 
		File.expand_path(File.join(File.dirname(__FILE__), '..'))
	end
	
	class Error < StandardError; end
	
	class Checker
	
		def initialize(config_file)
			
			@config_file = config_file
		
		end
		
		def check(url, options = {}) 
=begin				
			cache_file = 'cache'

			system("touch #{cache_file}")
	
			# Download it
			http = Net::HTTP.new('mail.google.com', 443)
			req = Net::HTTP::Get.new('/mail/feed/atom/')
			http.use_ssl = true
			http.verify_mode = OpenSSL::SSL::VERIFY_NONE
			req.basic_auth '', ''
			response = http.request(req)
	
			# Parse it	
			include REXML
			
			doc = Document.new response.body
			doc.elements.each('//entry') {|entry| 
				
				id = entry.elements['id'].text			
				
				if (!system("grep #{id} #{cache_file} > /dev/null")) 
				
					GrowlGmail.notify({
						:message => entry.elements['title'].text,
						:title => entry.elements['author/name'].text
					})
					
					system("echo #{id} >> #{cache_file}")
				
				end
			
			}				
					  
=end		
		end
		
		def notify(options)
#			#image = File.join(File.expand_path(File.dirname(__FILE__)), "gmail.png")
			Growl.notify 'Growl Atom', options.merge({:name => 'GrowlGmail', :image => image, :host => 'localhost'})
		end
		
		
	end
	
end