class Appointment < ActiveRecord::Base
	has_many :student_appointments
	has_many :students, through: :student_appointments
	belongs_to :tutor
	belongs_to :window

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
				str << "#{Skill.find(skill).name} or "
			elsif (index < skills.length - 1)
				str << "#{Skill.find(skill).name}, "
			else (index == skills.length - 1)
				str << "or #{Skill.find(skill).name}"
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
				str << "#{Window.find(window).name} or "
			elsif (index < windows.length - 1)
				str << "#{Window.find(window).name}, "
			else (index == windows.length - 1)
				str << "or #{Window.find(window).name}"
			end
		end
		str
	end

	def self.user_appointments(user)
			Appointment.all.select do |appointment|
				if Student.all.include?(user)
					appointment.students.include?(user) && !appointment.cancelled && !appointment.declined
				else
					appointment.tutor_id == user.id && !appointment.cancelled && !appointment.declined
				end
			end
	end

	def self.confirmed_user_appointments(user)
		Appointment.all.select do |appointment|
			if Student.all.include?(user)
				appointment.students.include?(user) && !appointment.cancelled && !appointment.declined && appointment.confirmed
			else
				appointment.tutor_id == user.id && !appointment.cancelled && !appointment.declined && appointment.confirmed
			end
		end
	end

	def self.unconfirmed_user_appointments(user)
		Appointment.all.select do |appointment|
			if Student.all.include?(user)
				appointment.students.include?(user) && !appointment.cancelled && !appointment.declined && !appointment.confirmed
			else
				appointment.tutor_id == user.id && !appointment.cancelled && !appointment.declined && !appointment.confirmed
			end
		end
	end

	def list_students
		str = ""
		self.students.each_with_index do |student, index|
			if (self.students.length == 1) || ((self.students.length == 2) && (index == 1))
				str << "#{student.name}"
			elsif (self.students.length == 2 && index == 0)
				str << "#{student.name} and "
			elsif (index < self.students.length - 1)
				str << "#{student.name}, "
			else (index == self.students.length - 1)
				str << "and #{student.name}"
			end
		end
		str
	end

end
