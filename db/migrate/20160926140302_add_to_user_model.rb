class AddToUserModel < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :address
      t.string :phone_number
    end
  end
end
