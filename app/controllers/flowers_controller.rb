class FlowersController < ApplicationController

  def index
    @flowers = Flowers.all
    # p @flowers
  end

end
