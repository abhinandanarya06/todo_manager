# todos_controller.rb
class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render "todos"
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.formatted_string
  end

  def create
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
    )
    render plain: "New Todo is created with id = #{new_todo.id}"
  end

  def update
    id = params[:id]
    completed = params[:completed]
    todo = Todo.find(id)
    todo.completed = completed
    todo.save!
    render plain: "Todo : #{todo.todo_text} is marked [#{todo.completed ? "X" : " "}]"
  end
end
