class RepositoryPageTest < ActiveSupport::TestCase

  def test_can_get_username
    joe = RepositoryPage.new("jcreiff")
    assert_equal "jcreiff", joe.show_user
  end

end
