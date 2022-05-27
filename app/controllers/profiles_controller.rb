class ProfilesController < ApplicationController
  before_action :set_post, only: %i[show index]

  def index; end

  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @profile = current_user.profile
  end
end
