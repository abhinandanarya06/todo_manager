class Todo < ActiveRecord::Base
  validates :todo_text, :due_date, presence: true
  belongs_to :user
  # ------------------ FILTER METHODS -----------------------
  # 1. overdue
  # 2. due_today
  # 3. due_later
  scope :overdue, -> { where("due_date < ?", Date.today) }
  scope :due_today, -> { where("due_date = ?", Date.today) }
  scope :due_later, -> { where("due_date > ?", Date.today) }

  def self.completed(status)
    where(completed: status)
  end
end
