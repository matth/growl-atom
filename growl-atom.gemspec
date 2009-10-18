Gem::Specification.new do |s| 
  s.name = "growl-atom"
  s.version = "0.0.5"
  s.author = "Matt Haynes"
  s.email = "matt@matthaynes.net"
  s.homepage = "http://github.com/matth/growl-atom/tree/master"
  s.platform = 'universal-darwin-9'
  s.summary = "Creates growl notifications for Atom entries"
  s.bindir = 'bin'
  s.executables << 'growl-atom'
  s.files = ["config", "growl.atom.plist", "lib/growl-atom.rb", "icons/gmail.png"]
  s.require_path = "lib"
  s.has_rdoc = false
  s.add_dependency('growl', '= 1.0.3')
end
