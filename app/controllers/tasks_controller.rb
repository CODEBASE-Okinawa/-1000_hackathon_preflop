class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(pask_params)
    # debugger
    if @task.save
      redirect_to root_url
    end
  end
  
    private
    
      def task_params
        params.require(:task).permit(:content)
      end
      
end