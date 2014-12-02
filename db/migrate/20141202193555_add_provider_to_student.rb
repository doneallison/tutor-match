class AddProviderToStudent < ActiveRecord::Migration
  def change
    add_column :students, :provider, :string
  end
end
