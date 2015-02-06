class AddColumnToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :zipcode, :string
    add_column :groups, :country, :string
  end
end
