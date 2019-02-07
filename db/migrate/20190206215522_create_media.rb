class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :name
      t.decimal :value, precision: 5, scale: 2
      t.timestamps
    end
  end
end
