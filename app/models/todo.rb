class Todo < ActiveRecord::Base
  def formatted_string
    "#{id} #{due_date.to_s(:long)} #{todo_text} [#{completed ? "X" : " "}]"
  end
end
