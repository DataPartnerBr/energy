class CreateVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :versions do |t|
      t.string :number
      t.string :comments
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :versions, :number, unique: true
  end
end
