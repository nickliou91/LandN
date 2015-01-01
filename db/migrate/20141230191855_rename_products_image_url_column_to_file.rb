class RenameProductsImageUrlColumnToFile < ActiveRecord::Migration
  def change
  	rename_column :products, :image_url, :file 
  end
end
