class AddSubCategoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sub_category, :string
  end
end
