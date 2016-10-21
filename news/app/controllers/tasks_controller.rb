class TasksController < ApplicationController
def create
  @newsinfo = Newsinfo.find(params[:newsinfo_id])
  @task = @newsinfo.tasks.create(task_params)
  redirect_to newsinfo_path(@newsinfo.id)
end   
private
  def task_params
    params[:task].permit(:title)
  end
end
