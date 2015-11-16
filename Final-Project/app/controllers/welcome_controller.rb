class WelcomeController < ApplicationController
  def index
    if params.has_key?(:id)
      @desired_video = Video.find(params[:id])
      # Prepend the video number (each video is in a folder by
      # number. It's a quick assignment, okay! I'm sorry to
      # the pros out there who are upset by this.)
      @desired_video.filename = "#{@desired_video.name}/#{@desired_video.filename}"
      @video_exists = true
    else
      @desired_video = Video.new
      @desired_video.filename = '1/1' # Default video filname
      @video_exists = false
    end

    # @desired_video = (params.has_key?('id')) ? "#{params[:id]}/#{params[:id]}" : '1/1'

    render 'welcome/index'
  end

  def upload
    # The user has requested to download
    # a video, so we'll send it to them
    send_data "videos/#{params[':video_id']}/params[':filename']"
  end
end
