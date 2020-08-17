class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.boolean :availability
      t.string :pet_ability
      t.string :description
      t.string :photo
      t.string :location

      t.timestamps
    end
  end
end
