class Student < ActiveRecord::Base
	has_many :appointments, through: :studentappointments

  def self.create_from_omniauth(auth_hash)
    self.create(provider: auth_hash[:provider],
                uid: auth_hash[:uid],
                name: auth_hash[:info][:name])
  end

end
