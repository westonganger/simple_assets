require 'test_helper'

class DefaultAssetsTest < Minitest::Test

  def test_autosize
    output = SimpleAssets.render("autosize")
  end

  def test_bootstrap
    output = SimpleAssets.render("bootstrap")
  end

  def test_bulma
    output = SimpleAssets.render("bulma")
  end

  def test_chosen
    output = SimpleAssets.render("chosen")
  end

  def test_font_awesome
    output = SimpleAssets.render("font-awesome")
  end

  def test_jquery
    output = SimpleAssets.render("jquery")
  end

  def test_jquery_tablesorter
    output = SimpleAssets.render("jquery.tablesorter")
  end

  def test_masonry
    output = SimpleAssets.render("masonry")
  end

  def test_milligram
    output = SimpleAssets.render("milligram")
  end

  def test_rails_ujs
    output = SimpleAssets.render("rails-ujs")
  end

  def test_turbolinks
    output = SimpleAssets.render("turbolinks")
  end

end
