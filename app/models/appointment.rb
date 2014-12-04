class Appointment < ActiveRecord::Base
	has_many :student_appointments
	has_many :students, through: :student_appointments
	belongs_to :tutor

	def self.find_matches(skills_needed, windows_needed)
		Tutor.all
	end

end
