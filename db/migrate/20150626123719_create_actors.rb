class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
    		t.string :Movie_title
			t.string :image
			t.string :release_year
			t.string :synopsis

      t.timestamps null: false
    end
  end
end
