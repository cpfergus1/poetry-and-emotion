class SearchController < ApplicationController
  def index
    @poems = PoetryFacade.return_ten(params[:author])
    require "pry"; binding.pry
  end
end
