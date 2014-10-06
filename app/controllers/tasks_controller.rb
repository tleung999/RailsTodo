class TasksController < ApplicationController
  def index
    @task_list = Tasks.all
  end

  def show
    @task = Tasks.find(params[:id])
  end

  def create
    @task = Tasks.new(tasks_params)
    @task.save
    redirect_to @task
  end

  def edit
    @task = Tasks.find(params[:id])
  end

  def update
    @task = Tasks.find(params[:id])
 
    if @task.update(tasks_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task = Tasks.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private
  def tasks_params
    params.require(:task).permit(:name, :description)
  end

end
