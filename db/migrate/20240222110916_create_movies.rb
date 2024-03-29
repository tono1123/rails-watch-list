class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :overview
      t.text :poster_url
      t.integer :rating

      t.timestamps
    end
    add_index :movies, :title, unique: true
  end
end
