class AddProductOrderColumnToProducts < ActiveRecord::Migration
  def change
  	  	add_column :products, :product_order, :integer

  end
end
