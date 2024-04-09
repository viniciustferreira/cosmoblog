class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
