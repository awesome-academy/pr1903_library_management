class AuthorsController < ApplicationController

  def index
    @authors = Author.paginate(page: params[:page])
    @author_ids = FollowAuthor.group(:author_id).count.sort_by{|x| x[1].to_i}.reverse.collect{|x| x[0]}
  end

  def show
    @author = Author.find(params[:id])
  end
end
