class CreateTutorSkills < ActiveRecord::Migration
  def change
    create_table :tutor_skills do |t|
      t.integer :tutor_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
