class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update]
  before_action :set_posts, only: %i[show]
  before_action :set_permission, only: %i[show]

  def show; end

  def edit; end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html do
          redirect_to profile_url(@profile), notice: 'Perfil atualizado com sucesso.'
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_posts
    current_page = (params[:page] || 0).to_i

    @posts = @profile.user.posts.order(created_at: :desc)
                     .page(current_page).per 4
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find params[:id]
  end

  def set_permission
    # user found and is the correct user to edit current profile.
    @all_permissions = user_signed_in? && current_user.profile.id == @profile.id
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:bio)
  end
end
