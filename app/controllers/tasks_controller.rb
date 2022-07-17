class TasksController < ApplicationController
  
  def index
    @task = Task.new
    tasks = Task.all
    
    @task_false = []
    @task_true = []
    
    tasks.each {|task| @task_false.push(task) if task.status == false }
    tasks.each {|task| @task_true.push(task) if task.status == true }
  end
  
  def create
    @task = Task.new(task_params)
    # debugger
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end
  
  def show
    tasks = Task.all
    
    # false true　それぞれの空配列を作る
    @task_false = []
    @task_true = []
    
    # false true それぞれ条件に合うものに入れ込む
    tasks.each {|task| @task_false.push(task) if task.status == false }
    tasks.each {|task| @task_true.push(task) if task.status == true }
  end
  
  # taskのチェックボックスクリック時にステータスを変更
  def toggle
    @task = Task.find(params[:id])
    
    # タスクstatusの値を反対に返す
    @task.status = !@task.status
    @task.save
    
    # render nothing: true
    # 上記のrenderはrails5から使えなくなったので下記の方法を利用
    redirect_to tasks_path
  end
  
    private
    
      def task_params
        # debugger
        params.require(:task).permit(:content)
      end
      
end