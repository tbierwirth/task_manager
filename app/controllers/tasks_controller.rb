class TasksController < ApplicationController
  def index
    # @tasks = ['Task 1', 'Task 2', 'Task 3']
    @tasks = Task.all
  end

  def new

  end

  def create
    task = Task.new({
      title: params[:task][:title],
      description: params[:task][:description]
      })
    task.save

    redirect_to '/tasks'
  end

  def show

  end
end
