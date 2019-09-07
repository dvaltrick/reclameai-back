class CreateComplaints < ActiveRecord::Migration[6.0]
  def change
    create_table :complaints do |t|
      t.string :order
      t.string :name
      t.string :email
      t.string :phone
      t.string :zipcode
      t.text :description

      t.timestamps
    end
  end
end
