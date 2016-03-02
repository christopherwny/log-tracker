class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :company
      t.string :responsibleParty
      t.string :issuer
      t.text :deficiency
      t.text :affectedArea
      t.string :eventSource
      t.string :status
      t.integer :cost
      t.text :notes
      t.integer :employee_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
