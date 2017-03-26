class StudentsController < ApplicationController
  def show
    @student = student.find(params[:id])

    render json: @student.to_json(:include => {:courses => {:include => :teacher }})
end
