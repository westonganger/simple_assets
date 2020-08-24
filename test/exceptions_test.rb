require 'test_helper'

class ExceptionsTest < Minitest::Test

  def test_error
    error = SimpleAssets::Error

    assert SimpleAssets.render("bootstrap")

    assert_raises error do
      SimpleAssets.render("some-missing-asset")
    end
  end

end
