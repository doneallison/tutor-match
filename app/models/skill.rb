class Skill < ActiveRecord::Base
	has_many :tutor_skills
	has_many :tutors, through: :tutor_skills
end