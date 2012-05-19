class CreateTask < ActiveRecord::Migration
  def change
    create_table :taks do |t|
      t.string :title
      t.text :description
      t.date :begin_time
      t.date :end_time
      t.integer :difficulty
      t.integer :User_id
      t.integer :priority_id
      t.integer :task_type_id
      t.boolean :status

      t.timestamps
    end
  end
end
