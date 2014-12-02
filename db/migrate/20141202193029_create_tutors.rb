class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :email
      t.string :slack
      t.string :github
      t.text :bio
      t.string :flatiron_class
      t.string :employer
      t.string :uid

      t.timestamps
    end
  end
end
