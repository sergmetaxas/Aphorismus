class AphorismsController < ApplicationController

  def index
    @aphorism = Aphorism.get_any
  end
  
end