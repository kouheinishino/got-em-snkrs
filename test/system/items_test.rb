require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    check "コラボ" if @item.コラボ
    fill_in "タイプ", with: @item.タイプ
    fill_in "商品名", with: @item.商品名
    fill_in "発売日", with: @item.発売日
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    check "コラボ" if @item.コラボ
    fill_in "タイプ", with: @item.タイプ
    fill_in "商品名", with: @item.商品名
    fill_in "発売日", with: @item.発売日
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
