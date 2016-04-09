class AddIdTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :IdType, :string
  end
end
