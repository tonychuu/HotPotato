class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :govid
      t.text :notes

      t.timestamps null: false
    end
  end
end
