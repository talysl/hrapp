class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.datetime :event_date
      t.text :event_details

      t.timestamps null: false
    end
  end
end
