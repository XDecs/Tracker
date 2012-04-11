class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :begin_time
      t.date :end_time
      t.integer :priority_id
      t.integer :user_id

      t.timestamps
    end
  end
end
