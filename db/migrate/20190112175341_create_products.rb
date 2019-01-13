class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :cost
      t.string :condition
      t.string :brand
      #Ex:- :default =>''

      t.timestamps
    end
  end
end
