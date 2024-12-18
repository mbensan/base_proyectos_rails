class CreateDestinations < ActiveRecord::Migration[7.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :description
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
