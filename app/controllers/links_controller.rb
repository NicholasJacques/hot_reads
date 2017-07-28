class LinksController < ApplicationController
  def index
    @links = Link.hot_reads
  end
end
