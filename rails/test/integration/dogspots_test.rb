require 'test_helper'
class DogspotsTest < ActionDispatch::IntegrationTest

  def test_show_loading_screen
    visit(root_path())
    page.has_content?('loading...')
  end
end