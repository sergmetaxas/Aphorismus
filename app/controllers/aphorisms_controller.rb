class AphorismsController < ApplicationController

  def index
    @aphorism = Aphorism.get_any
  end

  def aphorisms_by_author
    @aphorisms_by_author = Aphorism.where author_id: params[:id].to_i
  end
  
end