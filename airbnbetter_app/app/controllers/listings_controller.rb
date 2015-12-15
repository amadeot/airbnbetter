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
		@listing = Listing.create(img_url: params[:img_url], address: params[:address], neighborhood: params[:neighborhood], price: params[:price], description: params[:description], user_id: session[:user_id])
		redirect_to @listing
	end

	def edit
		@listing = Listing.new
	end

	def update
	end

	def destroy
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


