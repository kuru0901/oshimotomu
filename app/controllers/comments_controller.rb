class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash.now[:success] = t('.success')
    else
      flash.now[:alert] = t('.fail')
    end
    @flash = flash
    # createテンプレートをレンダリング
  end

  def destroy
    comment = current_user.comments.find(params[:id])
    comment.destroy!
    redirect_to promotion_path(comment.promotion)
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(promotion_id: params[:promotion_id])
  end
end
