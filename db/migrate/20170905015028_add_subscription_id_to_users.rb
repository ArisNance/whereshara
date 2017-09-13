class AddSubscriptionIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscriptions_id, :integer
    add_index :users, :subscriptions_id
  end
end
