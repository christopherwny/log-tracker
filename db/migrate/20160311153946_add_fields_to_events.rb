class AddFieldsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :correctiveAction, :string
  	add_column :events, :rac, :string
  	add_column :events, :targetData, :date
  	add_column :events, :refAuthority, :string
  	add_column :events, :closedDate, :date
  end
end
