require "application_system_test_case"

class GenresSongsTest < ApplicationSystemTestCase
  setup do
    @genres_song = genres_songs(:one)
  end

  test "visiting the index" do
    visit genres_songs_url
    assert_selector "h1", text: "Genres Songs"
  end

  test "creating a Genres songs" do
    visit genres_songs_url
    click_on "New Genres Songs"

    fill_in "Genre", with: @genres_song.genre_id
    fill_in "Song", with: @genres_song.song_id
    click_on "Create Genres songs"

    assert_text "Genres songs was successfully created"
    click_on "Back"
  end

  test "updating a Genres songs" do
    visit genres_songs_url
    click_on "Edit", match: :first

    fill_in "Genre", with: @genres_song.genre_id
    fill_in "Song", with: @genres_song.song_id
    click_on "Update Genres songs"

    assert_text "Genres songs was successfully updated"
    click_on "Back"
  end

  test "destroying a Genres songs" do
    visit genres_songs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genres songs was successfully destroyed"
  end
end
