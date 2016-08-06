class AddGovernmentidFromClients < ActiveRecord::Migration
  def change
    add_column :clients, :government_id, :string
  end
end
