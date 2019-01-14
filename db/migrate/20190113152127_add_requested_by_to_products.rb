class AddRequestedByToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :requested_by, :string, :default => ""
    #Ex:- :default =>''
  end
end
