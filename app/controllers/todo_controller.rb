class TodoController < ApplicationController
  def index
    @todo = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end
 
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todo_path
    else
      render :new
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:item, :desc, :author)
  end


end
