class AddDestinationToContact < ActiveRecord::Migration
  def change
    add_column :contact_messages, :destination, :string, default: 'contact@earthcells.net'
  end
end
