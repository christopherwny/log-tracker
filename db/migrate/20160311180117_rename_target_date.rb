class RenameTargetDate < ActiveRecord::Migration
  def change
  	rename_column("events", "targetData", "targetDate")
  end
end
