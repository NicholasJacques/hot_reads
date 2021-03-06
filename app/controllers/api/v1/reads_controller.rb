class Api::V1::ReadsController < ApplicationController

  def create
    @link = Link.find_or_initialize_by(link_params)
    @link.reads.new(user_id: params[:link][:user_id])

    if @link.save
      render json: @link
    else 
      render json: @link.errors.full_messages, status: 500
    end
  end

  def index
    @links = Link.hot_reads

    render json: @links
  end

  def link_params
    params.require(:link).permit(:url)
  end

end
