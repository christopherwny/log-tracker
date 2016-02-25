class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :fName
      t.string :lName
      t.string :phone
      t.string :email
      t.text :notes

      t.timestamps null: false
    end
  end
end
