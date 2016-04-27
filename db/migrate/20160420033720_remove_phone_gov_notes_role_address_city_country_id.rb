class RemovePhoneGovNotesRoleAddressCityCountryId < ActiveRecord::Migration
  def change
  	remove_column :users, :phone, :string
  	remove_column :users, :govid, :string
  	remove_column :users, :notes, :text
  	remove_column :users, :role, :string
  	remove_column :users, :address, :string
  	remove_column :users, :city, :string
  	remove_column :users, :country, :string
  	remove_column :users, :idtype, :string
  end
end
