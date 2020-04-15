require "application_system_test_case"

class S3imagesTest < ApplicationSystemTestCase
  setup do
    @s3image = s3images(:one)
  end

  test "visiting the index" do
    visit s3images_url
    assert_selector "h1", text: "S3images"
  end

  test "creating a S3image" do
    visit s3images_url
    click_on "New S3image"

    fill_in "Comment", with: @s3image.comment
    fill_in "File name", with: @s3image.file_name
    fill_in "Title", with: @s3image.title
    click_on "Create S3image"

    assert_text "S3image was successfully created"
    click_on "Back"
  end

  test "updating a S3image" do
    visit s3images_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @s3image.comment
    fill_in "File name", with: @s3image.file_name
    fill_in "Title", with: @s3image.title
    click_on "Update S3image"

    assert_text "S3image was successfully updated"
    click_on "Back"
  end

  test "destroying a S3image" do
    visit s3images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "S3image was successfully destroyed"
  end
end
