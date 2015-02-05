class AddAncestryToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :ancestry, :string
    add_index :groups, :ancestry
    remove_column :groups, :parent_id
  end
end
