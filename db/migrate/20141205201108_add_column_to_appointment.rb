class AddColumnToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :confirmed, :boolean
  end
end
