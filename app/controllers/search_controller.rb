class SearchController < ApplicationController

  def index
    render locals: {search: SearchFacade.new(params[:q])}
  end

end
