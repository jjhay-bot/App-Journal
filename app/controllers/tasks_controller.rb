class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "Category was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
end
