class AddRequestedToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :requested, :boolean, :default => false
    #Ex:- :default =>''
  end
end
