class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :slack
      t.string :github
      t.text :bio
      t.integer :uid

      t.timestamps
    end
  end
end
