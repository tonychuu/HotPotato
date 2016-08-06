class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :company
      t.string :phone_number
      t.string :goverment_id
      t.string :id_number
      t.string :email_address
      t.string :home_address
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
