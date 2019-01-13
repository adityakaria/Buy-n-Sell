class AddContactNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :contact_number, :integer, length: {minimum:7, maximum:10}
    #Ex:- :null => false
  end
end
