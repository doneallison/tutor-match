class Appointment < ActiveRecord::Base
	has_many :student_appointments
	has_many :students, through: :student_appointments
	belongs_to :tutor

	def self.find_matches(skills_needed, windows_needed)

		Tutor.select do |tutor|
			(tutor.skill_ids & skills_needed != []) && (tutor.window_ids & windows_needed != [])
		end

	end

end
