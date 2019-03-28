module StudentsHelper
  def exam_checkup(subject)
   #str = subject.exam_datetime
    return 'qualify' if subject.exam_datetime.to_s.slice(0,10) == Date.current.to_s
    #byebug
  end
end



