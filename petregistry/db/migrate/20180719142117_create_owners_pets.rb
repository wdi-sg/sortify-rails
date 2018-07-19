class CreateOwnersPets < ActiveRecord::Migration[5.2]
  def change
    create_table :owners_pets do |t|
      t.references :owner, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
