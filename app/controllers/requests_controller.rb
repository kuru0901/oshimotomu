class RequestsController < ApplicationController
  def index
    @requests = Request.all.includes(:user, :requests_bookmarks)
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
