class PostsController < ApplicationController
  
  def index
    @areas = Area.all
    if params[:post_or_area] == "true"
      @area = Area.find(params[:area_id])
      @posts = @area.posts
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @areas = Area.all
  end

  def create
    @post = Post.new(post_params)
    @areas = Area.all
    @post.user_id = current_user.id
   if @post.save!
     
      redirect_to posts_path(@post.id)
   else
      @posts = Post.all
      render 'index'
   end
  end

  def update
  end

  def edit
  end
  
  private
  def post_params
    params.require(:post).permit(:image, :title, :body, :area_id)
  end
end
