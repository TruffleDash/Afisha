class AddDateAndTimeToConcerts < ActiveRecord::Migration[7.1]
  def change
    add_column :concerts, :event_date, :date
    add_column :concerts, :event_time, :time
  end
end
