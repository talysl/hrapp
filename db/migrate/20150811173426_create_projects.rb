class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :area
      t.string :manager
      t.date :project_kickoff
      t.date :project_deadline
      t.text :team

      t.timestamps null: false
    end
  end
end
