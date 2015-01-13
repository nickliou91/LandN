class CatalogsController < ApplicationController


	def new
		@catalog = Catalog.new
	end

	def index
		@catalog = Catalog.new
		@catalogs = Catalog.all
	end

	def create 
		@catalog = Catalog.create(catalog_params)
		 	if @catalog.save
  		flash[:success]= "Photo Created"
  		redirect_to catalog_path
  	else
  		flash[:danger]= "Photo not created successful"
  		redirect_to catalog_path
  	end

	end

	def show
	end

	def delete
	end

	private
	def catalog_params
		params.require(:catalog).permit(:title, :file_url)
	end

end
