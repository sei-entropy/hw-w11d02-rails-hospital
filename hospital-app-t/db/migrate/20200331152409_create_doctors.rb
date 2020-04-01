class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :lst_name
      t.string :zip_code
      t.string :specialty

      t.timestamps
    end
  end
end
