module ApplicationHelper
  def malls_select_options
    ['Los Domínicos', 'Oeste', 'Egaña']
  end

  def concept_union_ticket(answer)
    return '<i class="fa fa-check green"></i>' if answer.convert_to(:answer).correct
    '<i class="fa fa-times red"></i>'
  end

  def percentage_alert(num, den)
    return '<span class="red">No disponible</span>' if den.zero?
    percent = (num * 100 / den).to_i
    return "<span class='red'>#{percent}%</span>" if percent < 50
    "<span class='green'>#{percent}%</span>"
  end
end
