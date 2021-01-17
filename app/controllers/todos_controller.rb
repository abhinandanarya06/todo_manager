# todos_controller.rb
class TodosController < ApplicationController
  def index
    render plain: Todo.all.map { |todo| todo.formatted_string }.join("\n")
  end
end
