class AddIdTypeFromUsers < ActiveRecord::Migration
  def change
    add_column :users, :idtype, :string
  end
end
