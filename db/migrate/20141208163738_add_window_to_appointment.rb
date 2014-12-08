class AddWindowToAppointment < ActiveRecord::Migration
	def change
		add_column :appointments, :window, :string
	end
end
