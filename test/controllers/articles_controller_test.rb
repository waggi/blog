require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # called before every single test
  setup :initialize_article

  # called after every single test
  def teardown
    @article = nil
  end

  test "should show article" do
    get :show, id: @article.id
    assert_response :success
  end

  test "should update article" do
    patch :update, id: @article.id, article: {}
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article.id
    end

    assert_redirected_to articles_path
  end

  private

  def initialize_article
    @article = articles(:one)
  end
end
