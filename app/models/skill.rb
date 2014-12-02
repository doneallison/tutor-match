class Skill < ActiveRecord::Base
	has_many :tutors, through: :tutorskills
end
