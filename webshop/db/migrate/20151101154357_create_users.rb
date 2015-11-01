class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :first_name
      t.string :last_name
      t.date :birthday

      t.timestamps null: false
    end
  end
end
