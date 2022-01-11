class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.text :description
      t.string :price
      t.string :location

      t.timestamps
    end
  end
end
