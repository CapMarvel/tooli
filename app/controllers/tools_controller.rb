class ToolsController < ApplicationController
  def index
    @tools=Tool.all #added for Index Page
  end

  def show
    @tool = Tool.find(params[:id]) #find the tool the user has
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
  end

  def update
  end

  def destroy
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :description, :address)
  end
end
