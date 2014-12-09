class Tutor < ActiveRecord::Base
  has_many :tutor_skills
	has_many :skills, through: :tutor_skills
  has_many :tutor_windows
	has_many :windows, through: :tutor_windows
	has_many :appointments

  def list_skills
    str = ""
    self.skills.each_with_index do |skill, index|
      if index == self.skills.length - 1
        str << skill.name
      else
        str << "#{skill.name}, "
      end
    end
    str
  end

  def self.create_from_omniauth(auth_hash)
    self.create(
      provider: auth_hash[:provider],
      uid: auth_hash[:uid],
      name: auth_hash[:info][:name],
      email: auth_hash[:info][:email],
      github: auth_hash[:info][:urls][:GitHub],
      image: auth_hash[:info][:image]
                )
  end

end
