class RepositoriesController < ApplicationController
  def index
  end

  def show
    @repo_list = RepositoryList.new(params[:username])
  end
end
