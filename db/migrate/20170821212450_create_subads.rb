class CreateSubads < ActiveRecord::Migration
  def change
    create_table :subads do |t|
      t.string :image
      t.string :title
      t.text :content
      t.string :brand
      t.string :url

      t.timestamps null: false
    end
  end
end
