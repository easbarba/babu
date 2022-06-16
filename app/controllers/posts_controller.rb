class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[create update edit new destroy]

  # GET /posts or /posts.json
  def index
    current_page = (params[:page] || 0).to_i

    @posts = Post
             .downroad
             .page(current_page).per 4
  end

  # GET /posts/1
  def show; end

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit; end

  # POST /posts
  def create
    @post = current_user.posts.build post_params

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: 'Nova estória criada.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: 'Estória corrigida.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Estória agora esquecida.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    # current post as anonimous reader
    @post = Post.find params[:id]

    # user is signed in? and is it the current post author?
    @post = current_user.posts.find(params[:id]) if helpers.has_all_permissions?
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
