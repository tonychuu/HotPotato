class RemoveIdTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :IdType, :string
  end
end
