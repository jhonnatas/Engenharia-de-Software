class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.datetime :aquisiton_date
      t.string :serial

      t.timestamps
    end
  end
end
