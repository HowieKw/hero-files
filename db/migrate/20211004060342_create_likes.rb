class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :likes
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :superhero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
