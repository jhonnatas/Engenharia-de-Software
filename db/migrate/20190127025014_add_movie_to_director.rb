class AddMovieToDirector < ActiveRecord::Migration[5.2]
  def change
    add_reference :directors, :movie, foreign_key: true
  end
end
