class TasksController < ApplicationController
  before_action :get_category

  def index
    @tasks = @category.tasks
  end

  def show
    @task = @category.tasks.find(task_params[:id]).build
  end

  def new
    # @task = Task.new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params)

    if @task.save
        redirect_to   #index page
    else
        render :new
    end
  end


  def edit
  end

  def update
    if  @category.tasks.update(task_params)
      format.html { redirect_to :show, notice: "Category was successfully updated." }
    else
      format.html { render :show, status: :unprocessable_entity }
    end
  end

  private

  def get_category
      @category = Category.find(params[:category_id])
  end

  def task_params
      params.require(:task).permit(:name, :description, :category_id)
  end

end
