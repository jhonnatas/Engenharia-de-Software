class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.boolean :active, default: true
      t.string :name, null: false
      t.string :status
      t.datetime :date_of_birth
      t.string :sgender
      t.string :cpf, null: false
      t.string :address, null: false
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :complement
      t.string :phone
      t.string :comercial_phone
      t.string :cellphone
      t.string :workplace

      t.timestamps
    end
  end
end
