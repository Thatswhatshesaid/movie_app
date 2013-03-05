class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :username
      t.string :moviename
      t.string :rating

      t.timestamps
    end
  end
end
