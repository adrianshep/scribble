class PostsController < ApplicationController
  # index
  def index
    # @user = User.find(session[:user]["id"])
    @posts = Post.all.reverse
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)
    # @user = User.find(session[:user]["id"])
    # @post = @user.posts.create!(post_params)
    redirect_to post_path(@post)
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  # destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end

# class PostsController < ApplicationController
  # index
  # def index
    # @posts = Post.all
  # end

  # new
  # def new
    # @post = Post.new
  # end

  # create
  # def create
    # @post = Post.create!(post_params)
    # redirect_to posts_path(@post)
    # "/posts/#{@post.id}"
  # end

  #show
  # def show
    # @post = Post.find(params[:id])
  # end

  # edit
  # def edit
    # @post = Post.find(params[:id])
  # end

  # update
  # def update
    # @post = Post.find(params[:id])
    # @post.update(post_params)

    # redirect_to posts_path(@post)
    # "/artists/#{@artist.id}"
  # end

  # destroy
  # def destroy
    # @post = Post.find(params[:id])
    # @post.destroy

    # redirect_to posts_path
    # "/artists"
  # end

  # private
  # def post_params
    # params.require(:post).permit(:title, :text)
  # end
# end
