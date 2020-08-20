class RemovePhotoFromPets < ActiveRecord::Migration[6.0]
  def change
    remove_column :pets, :photo 
  end
end
