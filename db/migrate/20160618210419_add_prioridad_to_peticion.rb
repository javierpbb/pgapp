class AddPrioridadToPeticion < ActiveRecord::Migration
  def change
    add_column :peticions, :prioridad, :string
  end
end
