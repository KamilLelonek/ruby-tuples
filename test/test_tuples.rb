require_relative 'minitest_helper'

class TestTuples < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tuples::VERSION
  end
end
