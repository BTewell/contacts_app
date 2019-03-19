class CreateContactsGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts_groups do |t|
      t.integer :contact_id
      t.integer :group_id

      t.timestamps
    end
  end
end
