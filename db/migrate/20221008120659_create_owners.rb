class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :card_number
      t.integer :phone_number
      t.date :ownership_date
      t.date :birth_date

      t.timestamps
    end
  end
end
