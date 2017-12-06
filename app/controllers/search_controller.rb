class SearchController < ApplicationController
  
  def index
    @search_result = Aphorism.search_by(params[:query])
  end

end
