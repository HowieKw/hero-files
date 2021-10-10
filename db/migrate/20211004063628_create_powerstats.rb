class CreatePowerstats < ActiveRecord::Migration[6.1]
  def change
    create_table :powerstats do |t|
      t.integer :intelligence
      t.integer :strength
      t.integer :speed
      t.integer :durability
      t.integer :energy_projection
      t.integer :combat
      t.belongs_to :superhero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
