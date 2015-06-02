require './app/models/repository_page.rb'

class RepositoryPage

  def get_data
    JSON.parse(File.open('./test/models/my_repo_list.json').read)
  end

end

class RepositoryPageTest < ActiveSupport::TestCase

  def test_can_get_username
    joe = RepositoryPage.new("jcreiff")
    assert_equal "jcreiff", joe.show_user(0)
  end

  def test_can_get_repo_name
    joe = RepositoryPage.new("jcreiff")
    assert_equal "battleship", joe.repo_name(0)
  end

  def test_can_get_description
    joe = RepositoryPage.new("jcreiff")
    assert_equal "battleship", joe.description(0)
  end

  def test_can_get_last_update
    joe = RepositoryPage.new("jcreiff")
    assert_equal "2015-05-26T21:01:03Z", joe.last_update(0)
  end

  def test_can_get_language
    joe = RepositoryPage.new("jcreiff")
    assert_equal "Ruby", joe.language(0)
  end

  def test_can_get_stargazers
    joe = RepositoryPage.new("jcreiff")
    assert_equal 0, joe.stargazer_count(0)
  end

  def test_can_get_forks
    joe = RepositoryPage.new("jcreiff")
    assert_equal 0, joe.fork_count(0)
  end
end
