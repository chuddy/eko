class CreateAdContacts < ActiveRecord::Migration
  def change
    create_table :ad_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :comment
      t.references :product

      t.timestamps
    end
    add_index "ad_contacts", ["product_id"], :name => "ad_contacts_product_id_fk"
  end
end
