class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :name
      t.integer :type
      t.integer :count
      t.string :url

      t.timestamps null: false
    end
  end
end
