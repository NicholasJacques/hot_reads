class LinksController < ApplicationController
  def index
    @links = Link.hot_reads if Link.hot_reads
  end
end
