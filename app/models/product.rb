class Product < ActiveRecord::Base
	mount_uploader :file, ProductUploader

end
