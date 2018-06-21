class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer     :enquiry, null: false
      t.string      :company_name, null: false, index: true
      t.string      :department, null: false
      t.string      :user_name, null: false
      t.string      :email, null: false, unique: true
      t.integer     :tel_number, null: false, unique: true
      t.text        :company_url
      t.boolean     :task, null: false
      t.text        :remarks
      t.timestamps
    end
  end
end
