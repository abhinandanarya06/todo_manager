# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: Todo.all.map { |todo| todo.formatted_string }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.formatted_string
  end

  def create
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    completed = params[:completed]
    new_todo = Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: completed,
    )
    render plain: "New Todo is created with id = #{new_todo.id}"
  end
end
