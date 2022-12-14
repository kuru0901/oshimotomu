class MypagesController < ApplicationController
  def show
    @now_favorites = current_user.fans.includes(:favorite).now.map { |fan| fan.favorite }
    @before_favorites = current_user.fans.includes(:favorite).before.map { |fan| fan.favorite }
    @wrote_requests = current_user.requests
    answered_requests = current_user.answers.includes(:request).map { |answer| answer.request }
    @answered_requests = answered_requests.uniq
    @wrote_promotions = current_user.promotions
    commented_promotions = current_user.comments.includes(:promotion).map { |comment| comment.promotion }
    @commented_promotions = commented_promotions.uniq
  end

  def edit; end

  def update
    if current_user.update(profile_params)
      redirect_to mypage_path, notice: t('.success')
    else
      flash.now[:alert] = t('.fail')
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def profile_params
    params.require(:user).permit(:name, :email, :avatar)
  end
end
