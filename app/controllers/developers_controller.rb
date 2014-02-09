class DevelopersController < ApplicationController
  def index
    @developers = Developer.order(id: :desc).all
  end
end