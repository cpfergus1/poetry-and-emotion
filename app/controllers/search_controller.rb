class SearchController < ApplicationController
  def index
    @poems = PoetryFacade.return_ten(params[:author])
  end
end
