class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.string :picture
      t.string :journal
      t.integer :age

      t.timestamps null: false
    end
  end
end
