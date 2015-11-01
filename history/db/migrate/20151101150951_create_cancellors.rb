class CreateCancellors < ActiveRecord::Migration
  def change
    create_table :cancellors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday

      t.timestamps null: false
    end
  end
end
