class AddPersonIdToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :person_id, :integer
    add_index :subscriptions, :person_id
  end
end
