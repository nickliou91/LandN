class CategorySubCategoriesController < ApplicationController

	def new
	end
	def create
		# byebug
		@category_sub_category = CategorySubCategory.create(category_sub_category_params)
		
		if @category_sub_category.save
			flash[:success] = "Cateogry-sub-Cateogory Added Successfully"
			redirect_to category_sub_categories_path
		else
			redirect_to category_sub_categories_path

		end


	end 

	def index
		@category_sub_categories = CategorySubCategory.all
		@categories = Category.all
		@sub_categories = SubCategory.all
		@category_sub_category = CategorySubCategory.new
	end

	def show
	end

	def destroy
	end


	def edit
		@categories = Category.all
		@sub_categories = SubCategory.all
    @category_sub_category =CategorySubCategory.find(params[:id])
  end

  def update 

		@category_sub_category =CategorySubCategory.find(params[:id])    
		if @category_sub_category.update_attributes(category_sub_category_params)
      flash[:success] ="Category Sub-Category Update"
      redirect_to action:"index"
    else
      render 'edit'
    end

  end

	private
		def category_sub_category_params
			params.require(:category_sub_category).permit(:category_id, :sub_category_id)

		end


end
