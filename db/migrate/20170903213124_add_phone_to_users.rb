class AddPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :string
    add_column :users, :time, :datetime
  end
end
