class DeleteIdFieldsFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :company_id, :integer
  	remove_column :events, :employee_id, :integer
  end
end