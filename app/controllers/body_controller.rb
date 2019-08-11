class BodyController < ApplicationController
  def new
    @body = Body.new
  end
end
