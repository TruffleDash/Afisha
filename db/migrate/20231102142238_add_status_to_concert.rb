class AddStatusToConcert < ActiveRecord::Migration[7.1]
  def change
    add_column :concerts, :status, :string
  end
end
