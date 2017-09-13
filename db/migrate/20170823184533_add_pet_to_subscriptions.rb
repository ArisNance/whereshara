class AddPetToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :pet_name, :string
    add_column :subscriptions, :breed, :string
    add_column :subscriptions, :animal, :string
    add_column :subscriptions, :notes, :text
    add_column :subscriptions, :pet_image, :string
    add_column :subscriptions, :option_1, :string
    add_column :subscriptions, :option_2, :string
    add_column :subscriptions, :gender, :string

  end
end
