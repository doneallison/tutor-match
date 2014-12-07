class Student < ActiveRecord::Base
  has_many :student_appointments
	has_many :appointments, through: :student_appointments

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
