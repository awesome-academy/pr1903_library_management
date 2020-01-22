class FollowAuthorsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_signed?
  before_action :find_author, only: [:create, :destroy]
  before_action :find_follow_author, only: [:destroy]
  
  def create
    @follow_author = @author.follow_authors.create(user_id: current_user.id)
    respond_to do |format|
      format.html {redirect_to author_path(@author)}
      format.js
    end
  end

  def destroy
    respond_to do |format|
      if @follow_author.destroy
        format.html {redirect_to author_path(@author)}
        format.js
      end
    end
  end

  private
  def user_signed?
    unless user_signed_in?
      redirect_to root_path
    end
  end

  def find_author
    @author = Author.find(params[:author_id])
  end

  def find_follow_author
   @follow_author = @author.follow_authors.find(params[:id])
  end
end
