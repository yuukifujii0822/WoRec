class ChartsController < ApplicationController
  def index
    @chart_data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
  end
end
