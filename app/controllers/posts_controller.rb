class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = @user.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = @user.posts.build(post_params)

    if @post.save
      flash[:succes] = 'Post was successfully created.' 
      redirect_to @post
    else
      flash.now[:danger] = "The form contains #{helpers.pluralize(@post.errors.count, 'error')}"
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      flash[:succes] = 'Post was successfully updated.' 
      redirect_to @post
    else
      flash.now[:danger] = "The form contains #{helpers.pluralize(@post.errors.count, 'error')}"
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    flash[:notice] = 'Post was successfully destroyed.'
    redirect_to posts_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :summary, :content, :header_image)
    end
end
