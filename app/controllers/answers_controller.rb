class AnswersController < ApplicationController

  def create
    binding.pry
    @answer = Answer.new(status: true, request: Request.find(params[:id]), user: User.last)
     if @answer.save
      flash[:notice] = "Svar skapat"
    end
  end

  def request_params
    params.require(:answer).permit(:id)
  end

end
