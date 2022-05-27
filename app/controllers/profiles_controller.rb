class ProfilesController < ApplicationController
  before_action :set_post, only: %i[show]

  def index
    @profiles = Post.all
  end

  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @profile = Profile.find(params[:id])
  end
end
