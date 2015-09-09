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

	def test_year_percent
	assert_equal '100.0%', @m.year_percent(31536000.0)
	assert_equal '200.0%', @m.year_percent(63072000.0)
	assert_equal '50.0%', @m.year_percent(15768000.0)
	end

	def test_military_time
		assert_equal "13:00", @m.military_time("1:00 pm")
		assert_equal "8:00", @m.military_time("8:00 am")
		assert_equal "17:00", @m.military_time("5:00 pm")
		assert_equal "12:00", @m.military_time("12:00 pm")
		assert_equal "11:00", @m.military_time("11:00 am")
	end

	#def test_
		#assert_equal , @m.()
		#assert_equal , @m.()
		#assert_equal , @m.()
	#end

	#def test_
		#assert_equal , @m.()
		#assert_equal , @m.()
		#assert_equal , @m.()
	#end

	#def test_
		#assert_equal , @m.()
		#assert_equal , @m.()
		#assert_equal , @m.()
	#end
end
