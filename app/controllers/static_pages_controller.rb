class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def product
  	@products = Product.all
  	@categories = Category.all
  	
  end

  def about
  end

  def catalog
    @catalogs = Catalog.all 
  end

end
