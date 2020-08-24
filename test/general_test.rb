require 'test_helper'

class GeneralTest < Minitest::Test

  def test_version_accessible_by_default
    assert SimpleAssets::VERSION
  end

  def test_add_and_render
    SimpleAssets.add("foo") do
      "bar"
    end

    output = SimpleAssets.render("foo")

    assert_equal output, "bar"
  end

  if "".respond_to?(:html_safe?)

    def test_outputs_html_safe_when_available
      SimpleAssets.add("foo") do
        "bar"
      end

      output = SimpleAssets.render("foo")

      assert output.html_safe?
    end

  end

end
