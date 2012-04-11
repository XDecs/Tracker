class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country
      t.string :continent
      t.text :description

      t.timestamps
    end
  end
end
