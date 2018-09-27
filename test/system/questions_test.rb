require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url

  #   assert_selector "h1", text: "Questions"
  # end

  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h3", text: "Go ahead, make my day"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "ending with a ? isn't recieved well" do
    visit ask_url
    fill_in "question", with: "wassap?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end
end
