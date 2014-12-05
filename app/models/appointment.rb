class Appointment < ActiveRecord::Base
	has_many :student_appointments
	has_many :students, through: :student_appointments
	belongs_to :tutor

	def self.find_matches(skills_needed, windows_needed)

		Tutor.select do |tutor|
			(tutor.skill_ids & skills_needed != []) && (tutor.window_ids & windows_needed != [])
		end

	end

	def self.list_skills_in_sentence(skills)
		str = ""
		skills.each_with_index do |skill, index|
			if (skills.length == 1) || ((skills.length == 2) && (index == 1))
				str << "#{Skill.find(skill).name}"
			elsif (skills.length == 2 && index == 0)
				str << "#{Skill.find(skill).name} and "
			elsif (index < skills.length - 1)
				str << "#{Skill.find(skill).name}, "
			else (index == skills.length - 1)
				str << "and #{Skill.find(skill).name}"
			end
		end
		str
	end

	def self.list_windows_in_sentence(windows)
		str = ""
		windows.each_with_index do |window, index|
			if (windows.length == 1) || ((windows.length == 2) && (index == 1))
				str << "#{Window.find(window).name}"
			elsif (windows.length == 2 && index == 0)
				str << "#{Window.find(window).name} and "
			elsif (index < windows.length - 1)
				str << "#{Window.find(window).name}, "
			else (index == windows.length - 1)
				str << "and #{Window.find(window).name}"
			end
		end
		str
	end

end
