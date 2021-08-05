class TasksController < ApplicationController
  # def new
  #   @task = Task.new
  # end

  # def create
    # @category = Category.find(params[:category_id])
    # @task = @category.tasks.create(task_params)
  # end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
