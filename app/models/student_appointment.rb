class StudentAppointment < ActiveRecord::Base
	belongs_to :student
	belongs_to :appointment
end
