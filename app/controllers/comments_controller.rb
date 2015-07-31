class CommentsController < ApplicationController
  # index
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  # new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_comment_path(@post, @comment)
  end

  #show
  def show
    @comment = Comment.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.update(comment_params.merge(post: @post))
    redirect_to post_comments_path(@comment.post, @comment)
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :text, :user, :post_id)
  end
end

# class CommentsController < ApplicationController
  # index
    # def index
      # @songs = Comment.all
    # end

    # new
    # def new
      # @song = Song.new
    # end

    # create
    # def create
      # @song = Song.create(comment_params)

      # redirect_to songs_path(@song)
    # end

    #show
    # def show
      # @song = Song.find(params[:id])
    # end

    # edit
    # def edit
      # @song = Song.find(params[:id])
    # end

    # update
    # def update
      # @song = Song.find(params[:id])
      # @song.update(song_params)

      # redirect_to songs_path(@song)
    # end

    # destroy
    # def destroy
      # @song = Song.find(params[:id])
      # @song.destroy

      # redirect_to songs_path
    # end

    # private
    # def song_params
      # params.require(:song).permit(:title, :album, :preview_url, :post_id)
    # end
  # end
