class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :costCode
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :email
      t.string :user_id
      t.string :references

      t.timestamps
    end
  end
end
