class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :city
      t.string :pincode
      t.string :mobile

      t.timestamps
    end
  end
end
