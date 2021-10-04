class CreateBackgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :backgrounds do |t|
      t.text :aliases
      t.string :place_of_birth
      t.text :affiliations
      t.text :former
      t.text :relatives
      t.text :history
      t.belongs_to :superhero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
