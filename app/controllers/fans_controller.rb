class FansController < ApplicationController
  def new
    @fan_now = Fan.new(state: :now)
    @fan_before = Fan.new(state: :before)
    @fans_now = current_user.fans.now.includes(favorite: [:group,:content])
    @fans_before = current_user.fans.before.includes(favorite: [:group,:content])
  end

  def create
    @content = Content.find_by(id: favorite_params[:content_id])
    @favorite = Favorite.find_or_create_by(name: favorite_params[:name], existence: favorite_params[:existence], decade: favorite_params[:decade], gender: favorite_params[:gender], content_id: @content&.id)
    @fan = @favorite.fans.build(user_id: current_user.id)
    @fan[:state] = favorite_params[:state]
    @fans_now = current_user.fans.now.includes(:favorite)
    @fans_before = current_user.fans.before.includes(:favorite)
    if @favorite.persisted?
      if @fan.save
        @request = request.headers[:HTTP_TURBO_FRAME]
      else
        flash.now[:alert] = t('.fail')
        render :new, status: :unprocessable_entity
      end
    end
  end

  def destroy
    fan = current_user.fans.find(params[:id])
    favorite = fan.favorite
    fan.destroy!
    favorite.fans.destroy_all unless favorite.fans.any?
    redirect_to new_fan_path
  end

  def input
    @favorite = Favorite.find(params[:id])
    @request = request.headers[:HTTP_TURBO_FRAME]
  end

  private

  def favorite_params
    params.require(:fan).permit(:name, :existence, :decade, :gender, :content_id, :state)
  end
end
