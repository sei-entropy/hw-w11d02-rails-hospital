class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :family_name
      t.integer :zip_code
      t.string :and
      t.string :specialty
      t.timestamps
    end
  end
end
