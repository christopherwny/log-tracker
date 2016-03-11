class AddRiskCodeToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :riskCode, :string
  end
end
