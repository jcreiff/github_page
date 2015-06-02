class RepositoryList

  attr_reader :username

  def initialize(username)
    @username = username
    @page = get_data
  end

  def get_data
    HTTParty.get("https://api.github.com/users/#{@username}/repos?access_token=#{ENV["GITHUB_KEY"]}")
  end

  def user_name(num)
    @page[num]["owner"]["login"]
  end

  def repo_name(num)
    @page[num]["name"]
  end

  def description(num)
    @page[num]["description"]
  end

  def last_update(num)
   @page[num]["pushed_at"]
  end

  def language(num)
    @page[num]["language"]
  end

  def stargazer_count(num)
    @page[num]["stargazers_count"]
  end

  def fork_count(num)
    @page[num]["forks_count"]
  end
end
