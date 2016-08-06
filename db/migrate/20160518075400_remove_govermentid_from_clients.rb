class RemoveGovermentidFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :goverment_id, :string
  end
end
