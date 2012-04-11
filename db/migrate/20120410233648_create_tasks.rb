class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :beginTime
      t.date :endTime
      t.integer :difficulty
      t.integer :user_id
      t.integer :project_id
      t.integer :TaskType_id
      t.boolean :ProjectStatus

      t.timestamps
    end
  end
end
