class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :release_year

      t.timestamps null: false
    end
  end
end
