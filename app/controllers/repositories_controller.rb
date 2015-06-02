class RepositoriesController < ApplicationController
  def index
  end

  def show
    @repo_list = RepositoryPage.new(params[:username])
  end
end
