class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
        t.string :movie_title
			  t.string :image
			  t.string :release_year
			  t.string :synopsis

      t.timestamps null: false
    end
  end
end
