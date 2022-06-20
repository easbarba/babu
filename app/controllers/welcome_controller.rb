class WelcomeController < ApplicationController
  before_action :set_posts

  def index; end

  private

  def set_posts
    current_page = (params[:page] || 0).to_i
    @posts = Post.order(created_at: :desc)
                 .page(current_page).per 3
  end
end
