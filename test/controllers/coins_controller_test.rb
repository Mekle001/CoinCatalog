require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_path
    assert_response :success
    assert_select "title", "All Coins | Coin Catalog"
  end

  test "should get item" do
    get edit_coin_path(@coin)
    assert_response :success
  end
end
