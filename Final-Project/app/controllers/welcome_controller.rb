class WelcomeController < ApplicationController
  def index
    @desired_video = (params.has_key?('id')) ? "#{params[:id]}/#{params[:id]}" : '1/1'
    render 'welcome/index'
  end
end
