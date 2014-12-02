class TutorSkill < ActiveRecord::Base
	belongs_to :tutor
	belongs_to :skill
end
