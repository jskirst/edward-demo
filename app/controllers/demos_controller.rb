class DemosController < ApplicationController
  before_action :load_server
  before_action :load_demo
  before_action :load_facts

  def show
  end

  private

  def load_server
    @server ||= ENV["#{params[:server_id].upcase}_URL"]
  end

  def load_demo
    @demo = params[:id]
  end

  def load_facts
    return @facts = {} unless params[:facts]
    @facts = Hash[*URI.decode(params[:facts]).split('=')]
  end
end
