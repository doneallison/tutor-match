class CreateTutorWindows < ActiveRecord::Migration
  def change
    create_table :tutor_windows do |t|
      t.integer :tutor_id
      t.integer :window_id

      t.timestamps
    end
  end
end
