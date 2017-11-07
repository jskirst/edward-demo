class DemosController < ApplicationController
  before_action :load_server
  before_action :load_demo

  def show
  end

  private

  def load_server
    @server ||= ENV["#{params[:server_id].upcase}_URL"]
  end

  def load_demo
    @demo = params[:id]
  end
end
