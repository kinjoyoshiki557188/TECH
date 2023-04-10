class AnswersController < ApplicationController

  def create
    Answer.create(answer_params)
    redirect_to post_path(params[:post_id]) 
  end

  private
  def answer_params
    params.require(:answer).permit(:content, :name).merge(post_id: params[:post_id])
  end
end
