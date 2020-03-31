class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :family_name
      t.string :specialty
      t.integer :zip_code

      t.timestamps
    end
  end
end
