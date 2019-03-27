module StudentsHelper
  def exam_checkup(subject)
    return 'qualify' if subject.exame_date == Date.current && subject.final_Mark >= 40
    return 'not_qualified' if subject.exame_date == Date.current &&  subject.final_Mark < 40
  end
end



