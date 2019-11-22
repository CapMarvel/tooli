class ToolsController < ApplicationController

  def index
    @tools = policy_scope(Tool.all)
  end

  def show
    @tool = Tool.find(params[:id])
    authorize @tool
  end

  def new
    @tool = Tool.new
    authorize @tool
  end

  def create
    @tool = Tool.new(tool_params)
    authorize @tool

    @tool.user_id = current_user.id
    if @tool.save
      redirect_to @tool
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
    authorize @tool

  end

  def update
    @tool = Tool.find(params[:id])
    authorize @tool
    @tool.update(tool_params) #update tool in the database
    if @tool.save!
      redirect_to @tool
    else
      render :edit
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    authorize(@tool)
    @tool.destroy
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :address, :photo)
  end
end
