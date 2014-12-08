class Window < ActiveRecord::Base
	has_many :tutor_windows
	has_many :tutors, through: :tutor_windows
	has_many :appointments

end
