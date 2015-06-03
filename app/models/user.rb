class User

  attr_reader :username

  def initialize(username)
    @username = username
    @page = get_data
  end

  def get_data
    HTTParty.get("https://api.github.com/users/#{@username}?access_token=#{ENV["GITHUB_KEY"]}")
  end

  def picture
    @page["avatar_url"]
  end

  def real_name
    @page["name"]
  end

  def company
    @page["company"]
  end

  def location
    @page["location"]
  end

  def email
    @page["email"]
  end

  def join_date
    @page["created_at"].to_date.strftime "%B %e, %Y"
  end

  def followers
    @page["followers"]
  end

  def following
    @page["following"]
  end

end
