class SearchController < ApplicationController
  def index
    @items = Item.search(params[:keyword])
    @keyword = params[:keyword]
  end
end
