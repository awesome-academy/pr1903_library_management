class PublishersController < ApplicationController

  def index
    @publishers = Publisher.paginate(page: params[:page])
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
