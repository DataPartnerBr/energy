class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :sub_title
      t.text :body
      t.boolean :active
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
