class CreateActivities < ActiveRecord::Migration[7.2]
  def change
    create_table :activities do |t|
      t.string :name, null: false
      t.references :package, null: false, foreign_key: true

      t.timestamps
    end
  end
end
