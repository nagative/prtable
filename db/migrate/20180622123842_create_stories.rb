class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.string :sub_title, null: false
      t.references :user, foreign_key: true
      t.string :logo, null: false
      t.text :read, null: false
      t.string :picture, null: false
      t.string :description, null: false
      t.text :content, null: false
      t.timestamps null: false
    end
  end
end
