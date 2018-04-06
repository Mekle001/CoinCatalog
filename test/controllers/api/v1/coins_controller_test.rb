require 'test_helper'

class Api::V1::CoinsControllerTest < ActionDispatch::IntegrationTest

    setup do
        @user = users(:michael)
        @other_user = users(:archer)
    end

    test "should get index" do
        get api_v1_coins_path, as: :json
        assert_response :success
    end

    test "should create" do
        log_in_as(@user)
#        post api_v1_coins_path,
#            as: :json, 
#            params: {format: 'json', coin: {name: "Test Coin 1", description: "Details on TestCoin1"}}
#        assert_response :success
    end
    
end
