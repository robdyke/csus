class SystemController < ApplicationController
  def index
    @systems = System.order(:system_name)
  end
end
