class AddDistribuitorToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :distribuitor, foreign_key: true
  end
end
