class ChangeHeightWidthDepthInProducts < ActiveRecord::Migration
  def change
  	change_column :products, :width, :string
  	change_column :products, :height, :string
  	change_column :products, :depth, :string
  	
  end
end
