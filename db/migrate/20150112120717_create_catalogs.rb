class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
    	t.string :file_url
    	t.string :title
      t.timestamps
    end
  end
end
