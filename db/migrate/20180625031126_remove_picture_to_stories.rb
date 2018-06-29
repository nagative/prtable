class RemovePictureToStories < ActiveRecord::Migration
  def change
    remove_column :stories, :sub_title,   :string
    remove_column :stories, :picture,     :string
    remove_column :stories, :description, :string
    remove_column :stories, :content,     :text
  end
end
