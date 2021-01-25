class FavoritesController < ApplicationController
  
  def index
    @favorites = current_user.favorites
  end
  
  def create
    @favorite = Favorite.create(favorite_params)
    redirect_to request.referer
  end

  private
  def favorite_params
    params.permit(:post_id, :user_id)
  end
end
