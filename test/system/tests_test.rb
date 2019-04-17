require "application_system_test_case"

class TestsTest < ApplicationSystemTestCase
  setup do
    @test = tests(:one)
  end

  test "visiting the index" do
    visit tests_url
    assert_selector "h1", text: "Tests"
  end

  test "creating a Test" do
    visit tests_url
    click_on "New Test"

    fill_in "Id answer", with: @test.id_answer
    fill_in "Id question", with: @test.id_question
    fill_in "Id topic", with: @test.id_topic
    fill_in "Status", with: @test.status
    fill_in "Time", with: @test.time
    click_on "Create Test"

    assert_text "Test was successfully created"
    click_on "Back"
  end

  test "updating a Test" do
    visit tests_url
    click_on "Edit", match: :first

    fill_in "Id answer", with: @test.id_answer
    fill_in "Id question", with: @test.id_question
    fill_in "Id topic", with: @test.id_topic
    fill_in "Status", with: @test.status
    fill_in "Time", with: @test.time
    click_on "Update Test"

    assert_text "Test was successfully updated"
    click_on "Back"
  end

  test "destroying a Test" do
    visit tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test was successfully destroyed"
  end
end
