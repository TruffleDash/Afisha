class AddNumberToTicket < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :number, :string
  end
end
