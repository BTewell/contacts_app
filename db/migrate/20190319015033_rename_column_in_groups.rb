class RenameColumnInGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :type, :string
    add_column :groups, :name, :string
  end
end
