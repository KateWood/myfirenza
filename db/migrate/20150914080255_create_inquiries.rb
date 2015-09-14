class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city_of_interest
      t.string :state
      t.integer :zip
      t.string :reason
      t.integer :networth
      t.integer :liquidity

      t.timestamps null: false
    end
  end
end
