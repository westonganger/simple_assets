require 'test_helper'

class GeneralTest < Minitest::Test

  def test
    output = SimpleAssets.render("")

    assert_equal output, ""
  end

end
