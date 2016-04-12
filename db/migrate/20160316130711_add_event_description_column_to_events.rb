class AddEventDescriptionColumnToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :eventDescription, :string
  end
end
