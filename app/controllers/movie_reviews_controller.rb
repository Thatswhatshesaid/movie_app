class MovieReviewsController < ApplicationController
  # GET /movie_reviews
  # GET /movie_reviews.json
  def index
    @movie_reviews = MovieReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movie_reviews }
    end
  end

  # GET /movie_reviews/1
  # GET /movie_reviews/1.json
  def show
    @movie_review = MovieReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie_review }
    end
  end

  # GET /movie_reviews/new
  # GET /movie_reviews/new.json
  def new
    @movie_review = MovieReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie_review }
    end
  end

  # GET /movie_reviews/1/edit
  def edit
    @movie_review = MovieReview.find(params[:id])
  end

  # POST /movie_reviews
  # POST /movie_reviews.json
  def create
    @movie_review = MovieReview.new(params[:movie_review])

    respond_to do |format|
      if @movie_review.save
        format.html { redirect_to @movie_review, notice: 'Movie review was successfully created.' }
        format.json { render json: @movie_review, status: :created, location: @movie_review }
      else
        format.html { render action: "new" }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movie_reviews/1
  # PUT /movie_reviews/1.json
  def update
    @movie_review = MovieReview.find(params[:id])

    respond_to do |format|
      if @movie_review.update_attributes(params[:movie_review])
        format.html { redirect_to @movie_review, notice: 'Movie review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_reviews/1
  # DELETE /movie_reviews/1.json
  def destroy
    @movie_review = MovieReview.find(params[:id])
    @movie_review.destroy

    respond_to do |format|
      format.html { redirect_to movie_reviews_url }
      format.json { head :no_content }
    end
  end
end
