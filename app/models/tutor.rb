class Tutor < ActiveRecord::Base
	has_many :skills, through: :tutorskills
	has_many :windows, through: :tutorwindows
	has_many :appointments
end
