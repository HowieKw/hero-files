class CreateFavoriteHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_heros do |t|
      t.boolean :favorite
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :superhero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
