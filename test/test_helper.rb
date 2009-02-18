require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mocha'

require 'action_controller'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'nice_assert_select'

class Test::Unit::TestCase
  include NiceAssertSelect
end
