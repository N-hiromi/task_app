class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(created_at: :desc)
  end

  def show
    @task = Task.find_by(id: params[:id])
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to("/tasks")
      flash[:success] = 'Taskが登録されました'
    else
      render("tasks/new")
      flash[:alert] = "投稿に失敗しました"
    end
  end
  
  def edit
    @task = Task.find_by(id: params[:id])
  end
  
  def update
    @task = Task.find_by(id: params[:id])
    if @task.update(task_params)
      redirect_to("/tasks")
    else
      flash[:notice] = "文字を入力してください"
      render("tasks/:id/edit")
    end
  end
  
  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to("/tasks")
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :start, :end, :shujitu, :memo)
  end
  
end

