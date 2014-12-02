class Student < ActiveRecord::Base
	has_many :appointments, through: :studentappointments
end
