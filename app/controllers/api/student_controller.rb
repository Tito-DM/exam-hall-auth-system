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

  def show
    student = Student.find(params[:id])
    ActionCable.server.broadcast 'auth_channel',
    content: student.id
  end


  def student_params
    params.permit(:id, :fingerstatus)
  end
end