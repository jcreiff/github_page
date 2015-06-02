class RepositoriesController < ApplicationController
  def index
  end

  def show
    @username = params[:username]
  end
end
