class PagesController < ApplicationController
  def index
    @todo=Todo.all
  end

  def show
    @todo=Todo(params[:id])
  end

  def new
    @todo=Todo.new
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
    params.require(:page).permit(:item, :desc)
  end


end
