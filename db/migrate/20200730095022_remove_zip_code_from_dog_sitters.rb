class RemoveZipCodeFromDogSitters < ActiveRecord::Migration[5.2]
  def change
    remove_column :dog_sitters, :zip_code, :string
  end
end
