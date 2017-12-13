class SearchController < ApplicationController
  
  def index
    @search_result = Aphorism.search_by(params[:keywords])
  end
end
