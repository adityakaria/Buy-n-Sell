class AddContactNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :contact_number, :string
    #Ex:- :default =>''
  end
end
