class Appointment < ActiveRecord::Base
	has_many :students, through: :studentappointments
	belongs_to :tutor
end
