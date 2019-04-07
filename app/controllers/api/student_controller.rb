class Api::StudentController < ApplicationController
  def index
    id = current_student.id
    @student = Student.find(current_student)
    render json: {'student': @student}, status: :ok
  end

  def setting
    @setting = settint_api
    render json: {'setting' => @setting}, status: :ok

  end

  def update
    student = Student.find(params[:id])
    student.update_columns(fingerstatus: params[:fingerstatus])
    render json: student, status: :ok if student.save
      
  end

  def show 
    student = Student.find(params[:id])
    redirect_to student_path(student);
  end


  def student_params
    params.permit(:id, :fingerstatus)
  end
end