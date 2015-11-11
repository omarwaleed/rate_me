class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.boolean :approved
      t.string :type
      t.string :picture

      t.timestamps null: false
    end
  end
end
