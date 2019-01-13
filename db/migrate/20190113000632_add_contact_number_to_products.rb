class AddContactNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :contact_number, :string
  end
end
