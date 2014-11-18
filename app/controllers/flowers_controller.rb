class FlowersController < ApplicationController

  def index
    @flowers = Flowers.all
    @success = false
    if flash[:orderSuccess]
      @success = true
      @orderSuccessMessage = flash[:orderSuccess]
    end
    if flash[:messageSuccess]
      @contactUsSuccess = flash[:messageSuccess]
    end
  end

end
