class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

    	t.string :sku
    	t.string :description
    	t.string :user_id
    	t.string :image_url
    	t.integer :width
    	t.integer :height
    	t.integer :depth
    	t.integer :category_sub_category_id

      t.timestamps
    end
  end
end
