class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :diagnosis
      t.date :born_on
      t.references :doctor, null: false, foreign_key: true
      t.timestamps
    end
  end
end
