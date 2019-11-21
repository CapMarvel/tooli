class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user_id = current_user.id
    if @tool.save!
      redirect_to @tool
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id]) #takes all tools from database


  end

  def update
    @tool = Tool.find(params[:id])
    @tool.update(tool_params) #update tool in the database
    if @tool.save!
      redirect_to @tool
    else
      render :edit
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :address)
  end
end
