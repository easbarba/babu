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
    # anonimous reader display of current profile
    current_profile = Profile.find params[:id]

    if user_signed_in?
      # create a new profile to just registered user
      current_user.create_profile! name: current_user.name, bio: '...' if current_user.profile.nil?

      # get signed in user profile id instead of params one
      current_profile = Profile.find(current_user.profile.id)

      @all_permissions = current_user.id == current_profile.id
    end

    @profile = current_profile
  end

  # Only allow a list of trusted parameters through.
  def profile_params
    params.require(:profile).permit(:bio)
  end
end
