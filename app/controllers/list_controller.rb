class ListController < ApplicationController
  def index
    @cms = Cm.all
  end
end
