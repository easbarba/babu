class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update]

  # def index
  #   @profiles = Profile.all
  # end

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
    # create a new profile to just registered user
    current_user.create_profile! name: current_user.name, bio: '...' if current_user.profile.nil?

    current_profile = Profile.find(params[:id])

    @all_permissions = user_signed_in? && current_user.id == current_profile.id
    @profile = Profile.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:bio)
  end
end
