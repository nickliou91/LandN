class RemoveCategorySubCategoryIdFromProducts < ActiveRecord::Migration
  def change

  	remove_column :products, :category_sub_category_id
  end
end
