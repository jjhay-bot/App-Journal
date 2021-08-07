class TasksController < ApplicationController
  before_action :get_category

  def index
    # @category = Category.find(task_params[:category_id])
    @tasks = @category.tasks
  end

  def show
    # @category = Category.find(params[:category_id])
    @task = @category.tasks.find(params[:id])

  end

  def new
    # @category = Category.find(params[:category_id])
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params)

    if @task.save
        redirect_to @category  #index page
    else
        render :new
    end
  end

  def edit
    @task = @category.tasks.find(params[:id])
  end

  def update
    @task = @category.tasks.find(params[:id])
    if  @task.update(task_params)
      redirect_to @category, notice: "Category was successfully updated."
    else
      render :show, status: :unprocessable_entit
    end
  end

    # DELETE /products/1 or /products/1.json
    def destroy
      @task = @category.tasks.find(params[:id])
      @task.destroy
      respond_to do |format|
        format.html { redirect_to [@category], notice: "Product was successfully destroyed." }
        format.json { head :no_content }
      end
    end

  private

  def get_category
      @category = Category.find(params[:category_id])
  end

  def task_params
    params.require(:task).permit(:name, :description, :category_id, :schedule)
  end

end
