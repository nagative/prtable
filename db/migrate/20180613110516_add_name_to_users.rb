class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :overview, :text
    add_column :users, :representative, :string
    add_column :users, :foundation, :date
    add_column :users, :address, :text
    add_column :users, :vision, :text
  end
end
