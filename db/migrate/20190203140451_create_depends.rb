class CreateDepends < ActiveRecord::Migration[5.2]
  def change
    create_table :depends do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :cpf
      t.datetime :date_of_birth
      t.boolean :active
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
