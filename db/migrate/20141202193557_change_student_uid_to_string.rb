class ChangeStudentUidToString < ActiveRecord::Migration
  def up
    change_column :students, :uid, :string
  end

  def down
    change_column :students, :uid, :integer
  end
end
