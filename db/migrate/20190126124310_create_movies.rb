class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :title_br
      t.string :year
      t.text :cast
      t.text :synopsis
      t.string :type
      t.string :duration
      t.string :img
      t.string :country

      t.timestamps
    end
  end
end
