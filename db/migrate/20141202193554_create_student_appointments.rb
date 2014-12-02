class CreateStudentAppointments < ActiveRecord::Migration
  def change
    create_table :student_appointments do |t|
      t.integer :student_id
      t.integer :appointment_id

      t.timestamps
    end
  end
end
