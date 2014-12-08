class Window < ActiveRecord::Base
	has_many :tutor_windows
	has_many :tutors, through: :tutor_windows

	# def to_datetime
	# 	current_time = Time.now
	# end

	# def self.to_start_time
	# 	case self
	# 	when "Sunday Morning"
	# 		#code
	# 	when "Sunday Afternoon"
	# 		#code
	# 	when "Sunday Night"
	# 		#code
	# 	when "Monday Night"
	# 		#code
	# 	when "Tuesday Night"
	# 		#code
	# 	when "Wednesday Night"
	# 		#code
	# 	when "Thursday Night"
	# 		#code
	# 	when "Friday Night"
	# 		#code
	# 	when "Saturday Morning"
	# 		#code
	# 	when "Saturday Afternoon"
	# 		#code
	# 	when "Saturday Night"
	# 		#code
	# 	end
	# end

	# def self.to_end_time
	# 	case self
	# 	when "Sunday Morning"
	# 		#code
	# 	when "Sunday Afternoon"
	# 		#code
	# 	when "Sunday Night"
	# 		#code
	# 	when "Monday Night"
	# 		#code
	# 	when "Tuesday Night"
	# 		#code
	# 	when "Wednesday Night"
	# 		#code
	# 	when "Thursday Night"
	# 		#code
	# 	when "Friday Night"
	# 		#code
	# 	when "Saturday Morning"
	# 		#code
	# 	when "Saturday Afternoon"
	# 		#code
	# 	when "Saturday Night"
	# 		#code
	# 	end
	# end

	# end

end
