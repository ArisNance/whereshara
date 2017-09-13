class AddAdminToThredderToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin_column, :boolean, default: false
  end
end
