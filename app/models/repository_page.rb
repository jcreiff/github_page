class RepositoryPage

  def initialize(username)
    @username = username
    @page = get_data
  end

  def get_data
    HTTParty.get("https://api.github.com/users/#{@username}/repos?access_token=#{ENV["GITHUB_KEY"]}")
  end

  def show_user
    @page[0]["owner"]["login"]
  end

end
