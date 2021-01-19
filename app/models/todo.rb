class Todo < ActiveRecord::Base
  # ------------------ FILTER METHODS -----------------------
  # 1. overdue
  # 2. due_today
  # 3. due_later
  scope :overdue, -> { where("due_date < ?", Date.today) }
  scope :due_today, -> { where("due_date = ?", Date.today) }
  scope :due_later, -> { where("due_date > ?", Date.today) }
  scope :completed, -> { where(completed: true) }

  def formatted_string
    "#{id}. #{due_date.to_s(:long)} #{todo_text} [#{completed ? "X" : " "}]"
  end
end
