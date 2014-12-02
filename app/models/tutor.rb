class Tutor < ActiveRecord::Base
	has_many :skills, through: :tutorskills
	has_many :windows, through: :tutorwindows
	has_many :appointments

  def self.create_from_omniauth(auth_hash)
    self.create(provider: auth_hash[:provider],
                uid: auth_hash[:uid],
                name: auth_hash[:info][:name])
  end
end
