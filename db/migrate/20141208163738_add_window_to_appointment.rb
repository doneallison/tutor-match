class AddWindowToAppointment < ActiveRecord::Migration
	def change
		add_column :appointments, :window_id, :integer
	end
end
