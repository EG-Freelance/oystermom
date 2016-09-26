class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps null: false
    end
  end
end
