class AddProfilePictoTutorandStudent < ActiveRecord::Migration
  def change
  	add_column :students, :image, :string
  	add_column :tutors, :image, :string
  end
end
