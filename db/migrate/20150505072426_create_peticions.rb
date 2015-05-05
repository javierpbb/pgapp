class CreatePeticions < ActiveRecord::Migration
  def change
    create_table :peticions do |t|
      t.string :tipo
      t.date :fechadesde
      t.date :fechahasta
      t.integer :status
      t.string :email

      t.timestamps null: false
    end
  end
end
