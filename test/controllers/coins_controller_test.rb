require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @coin = coins(:one)
    @user = users(:michael)
    @other_user = users(:archer)
  end

  test "should get index" do
    puts coins_path
    get coins_path
    assert_response :success
    assert_select "title", "All Coins | Coin Catalog"
  end

  test "should get item" do
    log_in_as(@user)
    get edit_coin_path(@coin)
    assert_response :success
  end
end
