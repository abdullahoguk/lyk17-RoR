class BrandsController < ApplicationController
	def new
  	end

  	def index
    	@brands = Brand.all
  	end

  	def create
		@brand = Brand.new(brand_params)
	 	
	  	@brand.save
	  	redirect_to @brand
  	end

  	def show
    	@brand = Brand.find(params[:id])
  	end

  	private
  		def brand_params
    	params.require(:brand).permit(:name,:description)
  	end
end