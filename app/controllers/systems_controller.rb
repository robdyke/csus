class SystemsController < ApplicationController
  def index
    @systems = System.order(:system_name)
  end

  def new
    @system = System.new
  end

  def create
    @system = System.new(user_params)
    if @system.save
      flash[:success] = "System saved successfully"
      redirect_to @system
    else
      render 'new'
    end
  end

  def show
    @system = System.find(params[:id])
  end

  private
    def user_params
      params.require(:system).permit(:system_name)
    end
end
