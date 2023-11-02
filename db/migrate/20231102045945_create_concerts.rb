class CreateConcerts < ActiveRecord::Migration[7.1]
  def change
    create_table :concerts do |t|
      t.string :title
      t.string :body
      t.integer :price_ground_floor
      t.integer :price_amphitheater
      t.integer :price_balcony

      t.timestamps
    end
  end
end
