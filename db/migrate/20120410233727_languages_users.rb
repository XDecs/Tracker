class LanguagesUsers < ActiveRecord::Migration
   def change
	create_table :languages_users do |t|
	t.integer :project_id
	t.integer :user_id

	t.timestamps
	end
  end
end
