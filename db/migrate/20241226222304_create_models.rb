class CreateModels < ActiveRecord::Migration[7.2]
  def change
    create_table :models do |t|
      t.string :brand, null: false, limit: 255
      #Ex:- :null => false
      t.string :model, null: false, limit: 255
      t.integer :price, null: false, default: 10000

      t.timestamps
    end
  end
end
