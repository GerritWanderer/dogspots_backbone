class CommentsController < ApplicationController
  def create
    comment = Comment.create(params[:comment])
    @comments = Comment.includes(:user).find_all_by_spot_id(params[:comment][:spot_id])
    render rabl: @comments
  end
end
