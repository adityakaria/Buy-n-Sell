class AddRequestedByToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :requested_by, :integer
  end
end
