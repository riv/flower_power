class FlowersController < ApplicationController

  def index
    @flowers = Flowers.all
    @success = false
    if flash[:orderSuccess]
      @success = true
      @orderSuccessMessage = flash[:orderSuccess]
    end
  end

end
