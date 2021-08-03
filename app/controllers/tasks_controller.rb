class TasksController < ApplicationController
  def index
    @category = Category.find(category_params[:id])
    @tasks = @category.tasks.all
  end

  def new
    @task = Task.new
  end

  def show
    # @categorys = Task.find(category_params[:category_id])
    # @task = @categorys.task.find(category_params[:id]).build
  end

  def edit
  end

  def update
    respond_to do |format|
      if  @category.tasks.update(task_params)
        format.html { redirect_to :show, notice: "Category was successfully updated." }
      else
        format.html { render :show, status: :unprocessable_entity }
      end
    end
  end
end
