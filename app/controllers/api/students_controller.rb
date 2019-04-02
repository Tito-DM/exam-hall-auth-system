class StudentsController < ApiController
  def index
    student = current_student
    render json: students, status: :ok
  end

  def update
    student = Student.find(params[:fingerid])
    student.update_columns(fingerstatus: params[:fingerstatus])
    render json: student, status: :ok if student.save
      
  end

  def show 
    student = Student.find(params[:fingerid])
    redirect_to student_path(student);
  end


  def student_params
    params.permit(:fingerid, :fingerstatus)
  end
end