class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.text :name
      t.text :species

      t.timestamps
    end
  end
end
