class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :keyword_id
      t.string :description
      t.string :sentence
      t.integer :count

      t.timestamps null: false
    end
  end
end
