require 'test_helper'

class GenresSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genres_song = genres_songs(:one)
  end

  test "should get index" do
    get genres_songs_index_url
    assert_response :success
  end

  test "should get new" do
    get new_genres_song_url
    assert_response :success
  end

  test "should create genres_song" do
    assert_difference('GenresSongs.count') do
      post genres_songs_index_url, params: { genres_song: { genre_id: @genres_song.genre_id, song_id: @genres_song.song_id } }
    end

    assert_redirected_to genres_song_url(GenresSongs.last)
  end

  test "should show genres_song" do
    get genres_song_url(@genres_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_genres_song_url(@genres_song)
    assert_response :success
  end

  test "should update genres_song" do
    patch genres_song_url(@genres_song), params: { genres_song: { genre_id: @genres_song.genre_id, song_id: @genres_song.song_id } }
    assert_redirected_to genres_song_url(@genres_song)
  end

  test "should destroy genres_song" do
    assert_difference('GenresSongs.count', -1) do
      delete genres_song_url(@genres_song)
    end

    assert_redirected_to genres_songs_index_url
  end
end
