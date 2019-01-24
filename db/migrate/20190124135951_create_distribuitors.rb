class CreateDistribuitors < ActiveRecord::Migration[5.2]
  def change
    create_table :distribuitors do |t|
      t.string :rsocial, null: false, limit: 100
      t.string :cnpj, null: false, unique: true
      t.string :phone, limit: 20
      t.string :address, limit: 200
      t.string :neighborhood, limit: 120
      t.string :city, limit: 80
      t.string :state, limit: 20
      t.string :zipcode, limit: 14
      t.string :complement, limit: 45
      t.string :contact, limit: 80

      t.timestamps
    end
  end
end
