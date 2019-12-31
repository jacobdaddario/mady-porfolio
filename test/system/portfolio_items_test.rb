require "application_system_test_case"

class PortfolioItemsTest < ApplicationSystemTestCase
  setup do
    @portfolio_item = portfolio_items(:one)
  end

  test "visiting the index" do
    visit portfolio_items_url
    assert_selector "h1", text: "Portfolio Items"
  end

  test "creating a Portfolio item" do
    visit portfolio_items_url
    click_on "New Portfolio Item"

    fill_in "Description", with: @portfolio_item.description
    fill_in "Title", with: @portfolio_item.title
    fill_in "User", with: @portfolio_item.user_id
    click_on "Create Portfolio item"

    assert_text "Portfolio item was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio item" do
    visit portfolio_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @portfolio_item.description
    fill_in "Title", with: @portfolio_item.title
    fill_in "User", with: @portfolio_item.user_id
    click_on "Update Portfolio item"

    assert_text "Portfolio item was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio item" do
    visit portfolio_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio item was successfully destroyed"
  end
end
