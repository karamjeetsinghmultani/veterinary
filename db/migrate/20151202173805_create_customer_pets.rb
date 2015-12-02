class CreateCustomerPets < ActiveRecord::Migration
  def change
    create_table :customer_pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.string :date

      t.timestamps null: false
    end
  end
end
