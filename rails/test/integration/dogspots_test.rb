require 'test_helper'
class DogspotsTest < ActionDispatch::IntegrationTest

  def test_show_loading_screen
    visit(root_path())
    page.has_content?('loading...')
    click_link('Create new spot')
    page.has_selector?('form#new-spot')
    click_on('absenden')
    page.has_content?("Spot Detail")
  end
end