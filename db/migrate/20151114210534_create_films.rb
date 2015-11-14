class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.string :year
      t.string :starring
      t.text :plot
      t.string :image
      t.string :rating

      t.timestamps null: false
    end
  end
end
