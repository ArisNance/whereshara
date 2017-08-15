class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.string :company
      t.string :url
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps null: false
    end
  end
end
