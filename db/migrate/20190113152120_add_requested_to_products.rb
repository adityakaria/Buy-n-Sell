class AddRequestedToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :requested, :boolean
  end
end
