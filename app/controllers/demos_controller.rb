class DemosController < ApplicationController
  before_action :load_server
  before_action :load_demo

  def show
  end

  private

  def load_server
    @server ||= begin
      if params[:server_id] == "prod"
        "edward-api"
      else
        "edward-api-staging"
      end
    end
  end

  def load_demo
    @demo = params[:id]
  end
end
