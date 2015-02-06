class UpdateGroupDefaults < ActiveRecord::Migration
  def up
    change_column :groups, "members_can_add_members", :boolean, :default => true, :null => false
    change_column :groups, "is_visible_to_public", :boolean, :default => true, :null => false
    
  end

  def down
	change_column :groups, "members_can_add_members", :boolean, :default => false, :null => false
	change_column :groups, "is_visible_to_public", :boolean, :default => false, :null => false
  end
end
