class AddDoctorToPatients < ActiveRecord::Migration[6.0]
  def changes
    add_reference :patients, :doctor, null: false, foreign_key: true
  end
end
