class CreateSuperheros < ActiveRecord::Migration[6.1]
  def change
    create_table :superheros do |t|
      t.string :alias
      t.string :name
      t.string :creator
      t.string :universe

      t.timestamps
    end
  end
end
