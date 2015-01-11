class Product < ActiveRecord::Base
	belongs_to :user
	has_one :category
	has_one :sub_category
	mount_uploader :file, ProductUploader

end
