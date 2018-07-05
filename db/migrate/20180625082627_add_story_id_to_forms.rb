class AddStoryIdToForms < ActiveRecord::Migration
  def change
    add_reference :forms, :story, foreign_key: true
  end
end
