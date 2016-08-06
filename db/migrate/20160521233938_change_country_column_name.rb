class ChangeCountryColumnName < ActiveRecord::Migration
  def change
    rename_column :clients, :country, :country_code
  end
end
