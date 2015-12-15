class ListingsController < ApplicationController

	def index
		@listings = Listing.all
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(listing_params)

    if @listing.save
      redirect_to @listing, notice: 'Listing was successfully created.'
    else
      render :new
    end
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def update
		@listing = Listing.find(params[:id])
		if @listing.update(listing_params)
			redirect_to @listing
		else
			render :edit
		end
	end

	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy
		redirect_to "/"
	end
	
	private
	def listing_params
		params.require(:listing).permit(:address, :img_url, :neighborhood, :price, :description, :user_id)
	end
end



# listings GET    /listings(.:format)          listings#index
#              POST   /listings(.:format)          listings#create
#  new_listing GET    /listings/new(.:format)      listings#new
# edit_listing GET    /listings/:id/edit(.:format) listings#edit
#      listing GET    /listings/:id(.:format)      listings#show
#              PATCH  /listings/:id(.:format)      listings#update
#              PUT    /listings/:id(.:format)      listings#update
#              DELETE /listings/:id(.:format)      listings#destroy


