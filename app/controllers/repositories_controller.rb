class RepositoriesController < ApplicationController
  def index
  end

  def show
    @repo_list = RepositoryList.new(params[:username])
    @user = User.new(params[:username])
    @page_title = @user.username
  end
end
