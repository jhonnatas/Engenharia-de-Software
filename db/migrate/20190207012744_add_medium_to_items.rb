class AddMediumToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :medium, foreign_key: true
  end
end
