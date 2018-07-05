class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :sub_title, null: false
      t.string :picture, null: false
      t.string :description, null: false
      t.text :content, null: false
      t.timestamps null: false
    end
  end
end
