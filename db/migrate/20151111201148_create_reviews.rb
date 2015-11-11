class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :content

      t.timestamps null: false
    end
  end
end
