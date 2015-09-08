require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'utilities'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Utilities
   	end.new
	end

	# Tests go here
def test_leap_year
	assert_equal true, @m.leap_year(800)
	assert_equal true, @m.leap_year(400)
	assert_equal false, @m.leap_year(5)
end
#def test_amount
	#assert_equal , @m.amount()
	#assert_equal , @m.amount()
	#assert_equal , @m.amount()
#end
end
