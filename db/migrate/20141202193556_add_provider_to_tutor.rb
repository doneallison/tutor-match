class AddProviderToTutor < ActiveRecord::Migration
  def change
    add_column :tutors, :provider, :string
  end
end
