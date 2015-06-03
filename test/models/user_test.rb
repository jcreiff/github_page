require './app/models/user.rb'

class User

  def get_data
    JSON.parse(File.open('./test/models/mason.json').read)
  end

end

class UserTest < ActiveSupport::TestCase

  def test_can_get_pic_url
    mason = User.new("masonfmatthews")
    assert_equal "https://avatars.githubusercontent.com/u/5350842?v=3", mason.picture
  end

  def test_can_get_real_name
    mason = User.new("masonfmatthews")
    assert_equal "Mason F. Matthews", mason.real_name
  end

  def test_can_get_join_date
    mason = User.new("masonfmatthews")
    assert_equal "August 31, 2013", mason.join_date
  end

  def test_can_get_location_and_company
    mason = User.new("masonfmatthews")
    assert_equal "Durham, NC", mason.location
    assert_equal "The Iron Yard", mason.company
  end

  def test_can_get_followers_and_following
    mason = User.new("masonfmatthews")
    assert_equal 24, mason.followers
    assert_equal 6, mason.following
  end

  def test_can_get_email
    mason = User.new("masonfmatthews")
    assert_equal "", mason.email
  end

  def test_can_count_repos
    mason = User.new("masonfmatthews")
    assert_equal 10, mason.repo_total
  end
end
