class VoteController < ApplicationController
  def index
  @films = Film.order(:title)
  end
end
