class AnswersController < ApplicationController

  private

  def answer_params
    params.require(:answer).permit(:name, :a_body)
  end

end
