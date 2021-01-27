class TodosController < ApplicationController
  def index
    if current_user
      render "index"
    else
      redirect_to "/"
    end
  end

  def create
    if not current_user
      render plain: "Please login first"
      return
    end
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.new(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
      user_id: current_user.id,
    )
    if not new_todo.save
      flash[:error] = new_todo.errors.full_messages.join(", ")
      redirect_to todos_path
    else
      redirect_to todos_path
    end
  end

  def update
    if not current_user
      render plain: "Please login first"
    end
    id = params[:id]
    completed = params[:completed]
    todo = current_user.todos.find(id)
    todo.completed = completed
    todo.save!
    redirect_to todos_path
  end

  def destroy
    if not current_user
      render plain: "Please login first"
    end
    id = params[:id]
    current_user.todos.find(id).destroy
    redirect_to todos_path
  end
end
