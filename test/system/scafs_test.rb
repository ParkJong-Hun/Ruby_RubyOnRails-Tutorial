require "application_system_test_case"

class ScafsTest < ApplicationSystemTestCase
  setup do
    @scaf = scafs(:one)
  end

  test "visiting the index" do
    visit scafs_url
    assert_selector "h1", text: "Scafs"
  end

  test "creating a Scaf" do
    visit scafs_url
    click_on "New Scaf"

    fill_in "Content", with: @scaf.content
    fill_in "Title", with: @scaf.title
    click_on "Create Scaf"

    assert_text "Scaf was successfully created"
    click_on "Back"
  end

  test "updating a Scaf" do
    visit scafs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @scaf.content
    fill_in "Title", with: @scaf.title
    click_on "Update Scaf"

    assert_text "Scaf was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaf" do
    visit scafs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaf was successfully destroyed"
  end
end
