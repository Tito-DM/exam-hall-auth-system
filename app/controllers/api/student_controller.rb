class Api::StudentController < ApplicationController
  def index
    @student = Student.find(current_student)
    render json: @student.id, status: :ok
  end

  def setting
    setting = settint_api
    render json: setting.to_json, status: :ok

  end

  def edit
    student = Student.find(params[:id])
    student.update_columns(fingerstatus: params[:fingerstatus])
    render json: student, status: :ok if student.save
  end

  def query
    student = Student.find(params[:id])
    redirect_to student_path(student);
  end


  def student_params
    params.permit(:id, :fingerstatus)
  end
end