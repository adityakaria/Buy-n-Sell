class AddRequestedByToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :requested_by, :integer, :default => 0
    #Ex:- :default =>''
  end
end
