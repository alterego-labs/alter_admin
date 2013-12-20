$TESTING=true
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
require 'alter_admin'