class RenameColumnToContacts < ActiveRecord::Migration
  def change
    rename_column :contacts, :user_name, :company_logo
  end
end
