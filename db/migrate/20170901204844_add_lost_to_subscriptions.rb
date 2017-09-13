class AddLostToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :lost, :boolean, default: false
    add_column :subscriptions, :found, :boolean, default: false
  end
end
