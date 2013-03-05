class CreateMovieReviews < ActiveRecord::Migration
  def change
    create_table :movie_reviews do |t|
      t.string :movie_reviews
      t.integer :movies_id

      t.timestamps
    end
  end
end
