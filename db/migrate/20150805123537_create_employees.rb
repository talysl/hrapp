class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :full_name
      t.text :address
      t.integer :phone
      t.string :email
      t.string :role
      t.string :area
      t.date :admission_date
      t.string :contract_duration
      t.string :contract_term

      t.timestamps null: false
    end
  end
end
