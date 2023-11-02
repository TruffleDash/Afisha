class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string :zone
      t.integer :seat
      t.integer :price
      t.references :concert, null: false, foreign_key: true

      t.timestamps
    end
  end
end
