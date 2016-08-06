class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :brand
      t.string :model
      t.decimal :rental_cost
      t.decimal :msrp_cost
      t.boolean :rented
      t.boolean :lost
      t.integer :times_rented
      t.string :serial_number
      t.string :category
      t.integer :parent_equipment_id
      t.integer :child_equipment_id

      t.timestamps null: false
    end
  end
end