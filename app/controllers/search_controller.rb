class SearchController < ApplicationController
  
  def create
    @search_result = Aphorism.search_by(params[:keywords])
  end
end
 