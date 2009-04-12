Gem::Specification.new do |s| 
  s.name = "growl-gmail"
  s.version = "0.0.1"
  s.author = "Matt Haynes"
  s.email = "matt@matthaynes.net"
  s.homepage = "http://matthaynes.net/blog/"
  s.platform = Gem::Platform::RUBY
  s.summary = "Create growl notifications for incoming Gmail messages"
  s.bindir = 'bin'
  s.executables << 'growl-gmail'
  s.files = ["lib/growl-gmail.rb", "lib/gmail.png"]
  s.require_path = "lib"
  s.has_rdoc = false
  s.add_dependency('growl', '>= 0.0.6')
end