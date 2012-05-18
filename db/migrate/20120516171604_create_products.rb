class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.decimal :price,      :precision => 10, :scale => 2, :default => 0, :null => false
      t.string :city
      t.references :user

      t.timestamps
    end
    add_index "products", ["user_id"], :name => "product_user_id_fk"
  end
end
