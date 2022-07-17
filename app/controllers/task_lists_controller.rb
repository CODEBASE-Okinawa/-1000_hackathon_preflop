class TaskListsController < ApplicationController
  def new
  end
  
  def index
    @lists = TaskList.all
  end
  
  def show
    id = TaskList.find_by(params[:id]).to_i
    binding.irb
    tasks = Task.all
    
    # false true　それぞれの空配列を作る
    @task_false = []
    @task_true = []
    
    # false true それぞれ条件に合うものに入れ込む
    tasks.each {|task| @task_false.push(task) if task.status == false && task.task_lists_id == id }
    tasks.each {|task| @task_true.push(task) if task.status == true }
  end
  
end
