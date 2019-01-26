require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "creating a Movie" do
    visit movies_url
    click_on "New Movie"

    fill_in "Cast", with: @movie.cast
    fill_in "Country", with: @movie.country
    fill_in "Duration", with: @movie.duration
    fill_in "Img", with: @movie.img
    fill_in "Synopsis", with: @movie.synopsis
    fill_in "Title", with: @movie.title
    fill_in "Title br", with: @movie.title_br
    fill_in "Type", with: @movie.type
    fill_in "Year", with: @movie.year
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "updating a Movie" do
    visit movies_url
    click_on "Edit", match: :first

    fill_in "Cast", with: @movie.cast
    fill_in "Country", with: @movie.country
    fill_in "Duration", with: @movie.duration
    fill_in "Img", with: @movie.img
    fill_in "Synopsis", with: @movie.synopsis
    fill_in "Title", with: @movie.title
    fill_in "Title br", with: @movie.title_br
    fill_in "Type", with: @movie.type
    fill_in "Year", with: @movie.year
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "destroying a Movie" do
    visit movies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movie was successfully destroyed"
  end
end
