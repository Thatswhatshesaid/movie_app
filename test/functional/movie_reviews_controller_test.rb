require 'test_helper'

class MovieReviewsControllerTest < ActionController::TestCase
  setup do
    @movie_review = movie_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_review" do
    assert_difference('MovieReview.count') do
      post :create, movie_review: { movie_reviews: @movie_review.movie_reviews, movies_id: @movie_review.movies_id }
    end

    assert_redirected_to movie_review_path(assigns(:movie_review))
  end

  test "should show movie_review" do
    get :show, id: @movie_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_review
    assert_response :success
  end

  test "should update movie_review" do
    put :update, id: @movie_review, movie_review: { movie_reviews: @movie_review.movie_reviews, movies_id: @movie_review.movies_id }
    assert_redirected_to movie_review_path(assigns(:movie_review))
  end

  test "should destroy movie_review" do
    assert_difference('MovieReview.count', -1) do
      delete :destroy, id: @movie_review
    end

    assert_redirected_to movie_reviews_path
  end
end
