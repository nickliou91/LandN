class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|

    	t.string :title
    	t.string :description


      t.timestamps
    end
  end
end
