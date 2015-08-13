class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :start_date
      t.date :end_date
      t.text :considerations
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
