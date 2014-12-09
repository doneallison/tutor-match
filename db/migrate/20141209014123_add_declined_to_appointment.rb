class AddDeclinedToAppointment < ActiveRecord::Migration
	def change
	  add_column :appointments, :declined, :boolean
	end
end
