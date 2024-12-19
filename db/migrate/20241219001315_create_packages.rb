class CreatePackages < ActiveRecord::Migration[7.2]
  def change
    create_table :packages do |t|
      t.string :name, limit: 30, null: false
      t.integer :price, null: false
      t.integer :duration, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.references :destination, null: false, foreign_key: true
      t.timestamps
    end
  end
end
