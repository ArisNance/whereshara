class AddInfoToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :phone_number, :string
    add_column :subscriptions, :time, :datetime
  end
end
