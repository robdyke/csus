class TrustsController < ApplicationController
  def index
    @trusts = Trust.order(:trust_name)
  end

  def new
    @trust = Trust.new
  end

  def create
    @trust = Trust.new(trust_params)
    if @trust.save
      flash[:success] = "Trust saved successfully"
      redirect_to @trust
    else
      render 'new'
    end
  end

  def show
    @trust = Trust.find(params[:id])
  end

  private
    def trust_params
      params.require(:trust).permit(:trust_name, :nhs_code, :trust_post_code, :latitude, :longitude)
    end
end
