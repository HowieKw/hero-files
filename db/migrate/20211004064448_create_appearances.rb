class CreateAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :appearances do |t|
      t.string :gender
      t.string :origin
      t.string :height
      t.string :weight
      t.string :eye_color
      t.string :hair_color
      t.string :img_url
      t.string :ani
      t.belongs_to :superhero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
