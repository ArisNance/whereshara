class AddInfoToPeople < ActiveRecord::Migration
  def change
      add_column :people, :facebook, :string
      add_column :people, :twitter, :string
      add_column :people, :about, :text
  end
end
