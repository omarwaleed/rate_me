class CreateRComments < ActiveRecord::Migration
  def change
    create_table :r_comments do |t|
      t.integer :review_id
      t.integer :user_id
      t.string :content

      t.timestamps null: false
    end
  end
end
