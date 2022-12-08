class EnrollmentsController < ApplicationController
  def index
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrolment.create(params.require(:enrollment).permit(:courese_id, :student_id))
    redirect_to student_path(@enrollment.student)
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])
    @student = @enrollment.student
    @enrollment.destroy
    redirect_to student_path(@student)
  end
end
