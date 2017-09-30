class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :image
      t.string :title
      t.text :content
      t.string :description
      t.string :option_1
      t.string :option_2

      t.timestamps null: false
    end
  end
end
