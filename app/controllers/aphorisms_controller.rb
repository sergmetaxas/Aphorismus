class AphorismsController < ApplicationController
  
  def index
    @aphorism = Aphorism.get_any

    respond_to do |format|
      format.html
      format.json { render json: { text: @aphorism.text, author: @aphorism.author } }   
    end
  end

  def show
    @aphorism = Aphorism.where(id: params[:id].to_i).first
  end

  def aphorisms_by_author
    @aphorisms_by_author = Aphorism.where author_id: params[:id].to_i
  end
  
end
