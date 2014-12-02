class Window < ActiveRecord::Base
	has_many :tutors, through: :tutorwindows
end
