class AddMovieToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :movie, foreign_key: true
  end
end
