class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update]

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

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find params[:id]
    @posts = current_user.posts

    # user found and is the correct user to edit current profile.
    @all_permissions = user_signed_in? && current_user.id == @profile.id
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:bio)
  end
end
