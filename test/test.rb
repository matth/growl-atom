$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'growl-gmail'

GrowlGmail.check