class Catalog < ActiveRecord::Base

		mount_uploader :file_url, CatalogUploader

end
