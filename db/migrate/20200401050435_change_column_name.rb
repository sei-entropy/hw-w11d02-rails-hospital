class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :doctors, :first_name, :name
    rename_column :doctors, :last_name, :family_name

  end
end
