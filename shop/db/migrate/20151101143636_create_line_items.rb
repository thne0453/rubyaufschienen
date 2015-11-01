class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :oder_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
