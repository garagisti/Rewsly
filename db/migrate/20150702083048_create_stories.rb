class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.string :link, null: false
      t.integer :upvotes, null: false, default: 0
      t.string :category, null: false

      t.timestamps null: false
    end
  end
end
